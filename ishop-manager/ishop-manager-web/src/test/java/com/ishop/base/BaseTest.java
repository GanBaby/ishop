package com.ishop.base;

import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

/**
 * Created by 甘银道 on 2018/10/26
 *  配置spring和junit整合，junit启动时加载springIOC容器
 */

@RunWith(SpringJUnit4ClassRunner.class)
//告诉junit spring配置文件
@ContextConfiguration("classpath:spring/applicationContext-*.xml")
public class BaseTest {

}
