package com.service;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.dao.AddressDao;
import com.entity.AddressEntity;
import com.entity.vo.AddressVO;
import com.service.impl.AddressServiceImpl;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.ActiveProfiles;

import java.util.List;

import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.Timeout;
import java.util.concurrent.TimeUnit;
import static org.junit.jupiter.api.Assertions.assertFalse;

@SpringBootTest
@ActiveProfiles("test")
public class AddressDaoTest {

    @Autowired
    private AddressDao addressDao;

    @Autowired
    private AddressService addressService;

    public void delete() {
        addressDao.delete(null);
    }

    @Test
    public void testSaveAddress() {
        AddressEntity address = new AddressEntity();
        address.setId(7L);
        address.setUserid(11L);
        address.setAddress("abc");
        address.setName("white");
        address.setPhone("123");
        address.setIsdefault("否");
        // 保存地址
        addressService.insert(address);
        // 查询保存的地址
        AddressEntity savedAddress = addressService.selectById(address.getId());
        assertNotNull(savedAddress);
        assertEquals("abc", savedAddress.getAddress());
        assertEquals("white", savedAddress.getName());
        //delete();
    }

    @Test()
    @Timeout(value = 100, unit = TimeUnit.MILLISECONDS)
    public void testQueryPerformance() {
        /*
        try {
            Thread.sleep(200);
        } catch (InterruptedException e) {
            throw new RuntimeException(e);
        }
         */
        // 执行查询
        List<AddressEntity> addresses = addressDao.selectList(null);

        // 验证结果
        assertFalse(addresses.isEmpty());
    }
}