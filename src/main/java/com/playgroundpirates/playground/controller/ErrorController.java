package com.playgroundpirates.playground.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@ControllerAdvice
public class ErrorController {

    @ExceptionHandler(Exception.class)
    public String errorPage() {
        return "error";
    }
}
