package com.study.core;

import lombok.Getter;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.BeanFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.stereotype.Component;

@SpringBootApplication
public class Application13 {
    public static void main(String[] args) {
        BeanFactory bf = SpringApplication.run(Application13.class, args);
        MyClass132 b1 = bf.getBean(MyClass131.class).getField();

        System.out.println("b1 = " + b1);

    }
}

@Component
@Getter
@RequiredArgsConstructor
class MyClass131 {
    private final MyClass132 field;
}

@Component
class MyClass132 {
}