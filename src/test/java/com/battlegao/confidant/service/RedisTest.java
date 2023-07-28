package com.battlegao.confidant.service;

import com.battlegao.confidant.model.domain.User;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.core.ValueOperations;

import javax.annotation.Resource;

/**
 * Redis 测试
 */
@SpringBootTest
public class RedisTest {

    @Resource
    private RedisTemplate redisTemplate;

    @Test
    void test() {
        ValueOperations valueOperations = redisTemplate.opsForValue();
        // 增
        valueOperations.set("battlegaoString", "cat");
        valueOperations.set("battlegaoInt", 1);
        valueOperations.set("battlegaoDouble", 2.0);
        User user = new User();
        user.setId(1L);
        user.setUsername("battlegao");
        valueOperations.set("battlegaoUser", user);
        // 查
        Object battlegao = valueOperations.get("battlegaoString");
        Assertions.assertTrue("dog".equals((String) battlegao));
        battlegao = valueOperations.get("battlegaoInt");
        Assertions.assertTrue(1 == (Integer) battlegao);
        battlegao = valueOperations.get("battlegaoDouble");
        Assertions.assertTrue(2.0 == (Double) battlegao);
        System.out.println(valueOperations.get("battlegaoUser"));
        valueOperations.set("battlegaoString", "dog");
        redisTemplate.delete("battlegaoString");
    }
}
