package com.service;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.dao.AddressDao;
import com.entity.AddressEntity;
import com.entity.view.AddressView;
import com.entity.vo.AddressVO;
import com.service.impl.AddressServiceImpl;
import com.utils.PageUtils;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit.jupiter.SpringExtension;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import static org.junit.jupiter.api.Assertions.*;

@SpringBootTest
@ExtendWith(SpringExtension.class)
public class AddressServiceIntegrationTest {

    @Autowired
    private AddressServiceImpl addressService;

    @Autowired
    private AddressDao addressDao;

    @Test
    public void testQueryPage() {
        // 模拟参数
        Map<String, Object> params = new HashMap<>();
        params.put("page", "1"); // 当前页码
        params.put("limit", "10"); // 每页大小

        // 调用 queryPage 方法
        PageUtils result = addressService.queryPage(params);

        // 验证结果
        assertNotNull(result); // 验证结果不为空
        assertTrue(result.getTotal() >= 0); // 验证总记录数
        assertEquals(10, result.getPageSize()); // 验证每页大小
        assertEquals(1, result.getCurrPage()); // 验证当前页码

        // 验证数据列表
        List<?> resultList = result.getList();
        assertNotNull(resultList); // 验证数据列表不为空
    }

    @Test
    public void testQueryPageWithWrapper() {
        // 模拟参数
        Map<String, Object> params = new HashMap<>();
        params.put("page", "1"); // 当前页码
        params.put("limit", "10"); // 每页大小

        // 创建查询条件
        EntityWrapper<AddressEntity> wrapper = new EntityWrapper<>();
        wrapper.eq("isdefault", "是"); // 查询默认地址

        // 调用 queryPage 方法
        PageUtils result = addressService.queryPage(params, wrapper);

        // 验证结果
        assertNotNull(result); // 验证结果不为空
        assertTrue(result.getTotal() >= 0); // 验证总记录数
        assertEquals(10, result.getPageSize()); // 验证每页大小
        assertEquals(1, result.getCurrPage()); // 验证当前页码

        // 验证数据列表
        List<?> resultList = result.getList();
        assertNotNull(resultList); // 验证数据列表不为空
    }

    @Test
    public void testSelectListVO() {
        // 创建查询条件
        EntityWrapper<AddressEntity> wrapper = new EntityWrapper<>();
        wrapper.eq("isdefault", "是"); // 查询默认地址

        // 调用 selectListVO 方法
        List<AddressVO> result = addressService.selectListVO(wrapper);

        // 验证结果
        assertNotNull(result); // 验证结果不为空
        assertTrue(result.size() >= 0); // 验证结果列表大小
    }

    @Test
    public void testSelectVO() {
        // 创建查询条件
        EntityWrapper<AddressEntity> wrapper = new EntityWrapper<>();
        wrapper.eq("isdefault", "是"); // 查询默认地址
        wrapper.last("LIMIT 1"); // 限制只返回一条记录

        // 调用 selectVO 方法
        AddressVO result = addressService.selectVO(wrapper);

        // 验证结果
        assertNotNull(result); // 验证结果不为空
    }

    @Test
    public void testSelectListView() {
        // 创建查询条件
        EntityWrapper<AddressEntity> wrapper = new EntityWrapper<>();
        wrapper.eq("isdefault", "是"); // 查询默认地址

        // 调用 selectListView 方法
        List<AddressView> result = addressService.selectListView(wrapper);

        // 验证结果
        assertNotNull(result); // 验证结果不为空
        assertTrue(result.size() >= 0); // 验证结果列表大小
    }

    @Test
    public void testSelectView() {
        // 创建查询条件
        EntityWrapper<AddressEntity> wrapper = new EntityWrapper<>();
        wrapper.eq("isdefault", "是"); // 查询默认地址
        wrapper.last("LIMIT 1"); // 限制只返回一条记录

        // 调用 selectView 方法
        AddressView result = addressService.selectView(wrapper);

        // 验证结果
        assertNotNull(result); // 验证结果不为空
    }
}