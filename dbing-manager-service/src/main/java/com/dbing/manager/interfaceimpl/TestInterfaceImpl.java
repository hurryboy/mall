package com.dbing.manager.interfaceimpl;

import com.dbing.manager.services.TestInterface;
import org.springframework.stereotype.Service;

@Service
public class TestInterfaceImpl implements TestInterface {
    @Override
    public void test() {
        System.out.println("1131");
    }
}
