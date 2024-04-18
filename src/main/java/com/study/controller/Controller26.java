package com.study.controller;

import com.study.domain.MyBean254Customer;
import com.study.domain.MyBean256ProductList;
import com.study.domain.MyBean261Orders;
import com.study.domain.MyBean263Category;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.sql.DataSource;
import java.sql.*;
import java.util.ArrayList;

@Controller
@RequestMapping("main26")
public class Controller26 {
    @Autowired
    private DataSource dataSource;

    @GetMapping("sub1")
    public String sub1(String start, String end, Model model) throws SQLException {
        var list = new ArrayList<MyBean261Orders>();
        String sql = """
                SELECT *
                FROM Orders
                WHERE OrderDate BETWEEN ? AND ?
                """;
        Connection conn = dataSource.getConnection();
        PreparedStatement pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, start);
        pstmt.setString(2, end);
        ResultSet rs = pstmt.executeQuery();

        try (rs; conn; pstmt) {
            while (rs.next()) {
                MyBean261Orders row = new MyBean261Orders();

                row.setOrderId(rs.getInt(1));
                row.setCustomerId(rs.getInt(2));
                row.setEmployeeId(rs.getInt(3));
                row.setOrderDate(rs.getString(4));
                row.setShipperId(rs.getInt(5));

                list.add(row);
            }
        }
        model.addAttribute("prevStart", start);
        model.addAttribute("prevEnd", end);
        model.addAttribute("orderList", list);


        return "main26/sub1OrderList";
    }

    @GetMapping("sub2")
    public String method2(String[] country, Model model) throws Exception {
        Connection conn = dataSource.getConnection();

        if (country != null && country.length > 0) {
            String questionMarks = "";
            for (int i = 0; i < country.length; i++) {
                questionMarks = questionMarks + "?";
                if (i != country.length - 1) {
                    questionMarks = questionMarks + ",";
                }
            }
            String customerSql = STR."""
                    SELECT *
                    FROM Customers
                    WHERE Country IN (\{questionMarks})
                    """;

            var customerList = new ArrayList<MyBean254Customer>();
            PreparedStatement pstmt = conn.prepareStatement(customerSql);
            for (int i = 0; i < country.length; i++) {
                pstmt.setString((i + 1), country[i]);
            }
            ResultSet resultSet = pstmt.executeQuery();
            try (pstmt; resultSet) {

                while (resultSet.next()) {
                    MyBean254Customer data = new MyBean254Customer();
                    data.setId(resultSet.getInt(1));
                    data.setName(resultSet.getString(2));
                    data.setContactName(resultSet.getString(3));
                    data.setAddress(resultSet.getString(4));
                    data.setCity(resultSet.getString(5));
                    data.setPostalCode(resultSet.getString(6));
                    data.setCountry(resultSet.getString(7));
                    customerList.add(data);
                }
                model.addAttribute("customerList", customerList);
            }
        }

        String sql = """
                SELECT DISTINCT Country
                FROM Customers
                """;
        Statement stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery(sql);
        var countryList = new ArrayList<String>();
        try (stmt; rs; conn) {
            while (rs.next()) {
                countryList.add(rs.getString(1));
            }
            model.addAttribute("countryList", countryList);
        }

        return "main25/sub4CustomerList";
    }

    @GetMapping("sub3")
    public String Method3(@RequestParam(value = "category", required = false) String[] cid, Model model) throws Exception {
        Connection conn = dataSource.getConnection();

        if (cid != null && cid.length > 0) {
            String questionMarks = "";
            for (int i = 0; i < cid.length; i++) {
                questionMarks = questionMarks + "?";
                if (i != cid.length - 1) {
                    questionMarks = questionMarks + ",";
                }

            }

            String sql = STR."""
                    SELECT *
                    FROM Products
                    WHERE CategoryID IN (\{questionMarks})
                    ORDER BY CategoryID, Price ASC
                    """;

            var productsList = new ArrayList<MyBean256ProductList>();
            PreparedStatement pstmt = conn.prepareStatement(sql);
            for (int i = 0; i < cid.length; i++) {
                pstmt.setString(i + 1, cid[i]);
            }
            ResultSet rs2 = pstmt.executeQuery();
            try (rs2; pstmt) {
                while (rs2.next()) {
                    MyBean256ProductList row = new MyBean256ProductList();
                    row.setId(rs2.getInt(1));
                    row.setName(rs2.getString(2));
                    row.setSupplierID(rs2.getInt(3));
                    row.setCategoryID(rs2.getInt(4));
                    row.setUnit(rs2.getString(5));
                    row.setPrice(rs2.getString(6));

                    productsList.add(row);
                }
                model.addAttribute("products", productsList);
            }
        }


        String categorySql = "SELECT * FROM Categories";
        Statement stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery(categorySql);
        var categoryList = new ArrayList<MyBean263Category>();
        try (rs; stmt;) {
            while (rs.next()) {
                MyBean263Category category = new MyBean263Category();
                category.setId(rs.getInt(1));
                category.setName(rs.getString(2));

                categoryList.add(category);
            }
            model.addAttribute("categoryList", categoryList);
        }


        return "main25/sub6ProductList";
    }

}


