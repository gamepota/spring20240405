package com.study.service;


import com.study.domain.MyBean254Customer;
import com.study.domain.MyBean258Employee;
import com.study.mapper.Mapper07;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional(rollbackFor = Exception.class)
@RequiredArgsConstructor
public class Service03 {

    private final Mapper07 mapper;

    public void insertData() {
        MyBean258Employee e = new MyBean258Employee();
        e.setLastName("박");
        e.setFirstName("지성");
        mapper.insert(e);

        System.out.println(e.getId());
    }

    public void insertData2() {
        MyBean254Customer c = new MyBean254Customer();
        c.setName("머시깽이");
        mapper.insert2(c);

        System.out.println(c.getId());
    }
}
