package com.ishop.test;

import com.ishop.base.BaseTest;
import com.ishop.service.user.TcUserService;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;
import java.util.Map;

/**
 * Created by 甘银道 on 2018/10/26
 */
public class Test extends BaseTest {

    @Autowired
    private TcUserService tcUserService;

   @org.junit.Test
    public void test(){
        List<Map<String, Object>> list = tcUserService.selectList();
        System.out.printf("我执行了"+list.get(1).get("userSex"));
    }
}
