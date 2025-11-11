package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.dao.AddressDao;
import com.entity.AddressEntity;
import com.entity.view.AddressView;
import com.entity.vo.AddressVO;
import com.service.impl.AddressServiceImpl;
import com.utils.PageUtils;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;

import java.util.*;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.Mockito.*;
public class AddressServiceTest {

    @Mock
    private AddressDao baseMapper;

    @Mock
    private Wrapper<AddressEntity> wrapper;

    @InjectMocks
    private AddressServiceImpl addressService; // 注入 AddressServiceImpl

    @BeforeEach
    public void setUp() {
        MockitoAnnotations.initMocks(this); // 初始化 Mock 对象
    }
    @Test
    public void testQueryPage() {
        // 模拟参数
        Map<String, Object> params = new HashMap<>();
        params.put("page", "1");
        params.put("limit", "10");

        // 模拟分页结果
        Page<AddressEntity> mockPage = new Page<>();
        List<AddressEntity> mockList = new ArrayList<>();
        AddressEntity mockEntity = new AddressEntity();
        mockEntity.setId(1L);
        mockEntity.setName("Home");
        mockEntity.setAddress("123 Main St");
        mockList.add(mockEntity);

        mockPage.setRecords(mockList);
        mockPage.setSize(10);
        mockPage.setCurrent(1);

        // 模拟 selectPage 方法的行为，同时避免依赖真实的数据库或外部服务
        when(baseMapper.selectPage(any(Page.class), any(Wrapper.class))).thenReturn(Collections.singletonList(mockPage));

        // 调用 queryPage 方法
        PageUtils result = addressService.queryPage(params);

        // 验证结果
        assertNotNull(result); // 验证结果不为空
        assertEquals(10, result.getPageSize());
        assertEquals(1, result.getCurrPage());

        // 验证数据列表
        List<?> resultList = result.getList();
        assertNotNull(resultList); // 验证数据列表不为空
        assertEquals(1, resultList.size()); // 验证数据列表大小为 1
    }
    @Test
    public void testQueryPageWithWrapper() {
        // 模拟参数
        Map<String, Object> params = new HashMap<>();
        params.put("page", "2");
        params.put("limit", "20");

        // 模拟分页结果
        Page<AddressView> mockPage = new Page<>();
        List<AddressView> mockList = new ArrayList<>();
        AddressView mockView = new AddressView();
        mockView.setId(2L);
        mockView.setName("Office");
        mockView.setAddress("456 Business St");
        mockList.add(mockView);

        mockPage.setRecords(mockList);
        mockPage.setSize(20);
        mockPage.setCurrent(2);

        // 模拟 baseMapper.selectListView 的行为，同时避免依赖真实的数据库或外部服务
        when(baseMapper.selectListView(any(Page.class), any(Wrapper.class))).thenReturn(mockList);

        // 调用方法
        PageUtils result = addressService.queryPage(params, new EntityWrapper<>());

        // 验证结果
        assertNotNull(result);
        assertEquals(20, result.getPageSize()); // 验证每页大小
        assertEquals(2, result.getCurrPage()); // 验证当前页码

        // 验证数据列表
        List<?> resultList = result.getList();
        assertNotNull(resultList); // 验证数据列表不为空
        assertEquals(1, resultList.size()); // 验证数据列表大小为 1

        // 验证第一个元素的内容
        AddressView firstView = (AddressView) resultList.get(0);
        assertEquals("Office", firstView.getName()); // 验证 name 属性
        assertEquals("456 Business St", firstView.getAddress()); // 验证 address 属性
    }
    @Test
    public void testSelectListVO() {
        // 模拟 Wrapper 返回值
        List<AddressVO> mockList = new ArrayList<>();
        AddressVO mockVO = new AddressVO();
        mockVO.setAddress("123");
        mockVO.setName("Home");
        mockList.add(mockVO);

        // 模拟 baseMapper.selectListVO(wrapper) 的行为
        when(baseMapper.selectListVO(wrapper)).thenReturn(mockList);

        // 调用方法
        List<AddressVO> result = addressService.selectListVO(wrapper);

        // 验证结果
        assertNotNull(result); // 验证结果不为空
        assertEquals(1, result.size()); // 验证结果列表大小为 1
        assertEquals("Home", result.get(0).getName()); // 验证第一个元素的 name 属性为 "Home"
        assertEquals("123", result.get(0).getAddress()); // 验证第一个元素的 address 属性为 "123"
    }
    @Test
    public void testSelectVO() {
        // 模拟 Wrapper 返回值
        AddressVO mockVO = new AddressVO();
        mockVO.setAddress("456 Business St");
        mockVO.setName("Office");
        mockVO.setPhone("987-654-3210");

        // 模拟 baseMapper.selectVO 的行为
        when(baseMapper.selectVO(any(Wrapper.class))).thenReturn(mockVO);

        // 调用方法
        AddressVO result = addressService.selectVO(new EntityWrapper<>());

        // 验证结果
        assertNotNull(result); // 验证结果不为空
        assertEquals("Office", result.getName()); // 验证 name 属性
        assertEquals("456 Business St", result.getAddress()); // 验证 address 属性
        assertEquals("987-654-3210", result.getPhone()); // 验证 phone 属性
    }
    @Test
    public void testSelectListView() {
        // 模拟 Wrapper 返回值
        List<AddressView> mockList = new ArrayList<>();
        AddressView mockView = new AddressView();
        mockView.setId(1L);
        mockView.setName("Home");
        mockView.setAddress("123 Main St");
        mockList.add(mockView);

        // 模拟 baseMapper.selectListView 的行为
        when(baseMapper.selectListView(any(Wrapper.class))).thenReturn(mockList);

        // 调用方法
        List<AddressView> result = addressService.selectListView(new EntityWrapper<>());

        // 验证结果
        assertNotNull(result); // 验证结果不为空
        assertEquals(1, result.size()); // 验证结果列表大小为 1

        // 验证第一个元素的内容
        AddressView firstView = result.get(0);
        assertEquals("Home", firstView.getName()); // 验证 name 属性
        assertEquals("123 Main St", firstView.getAddress()); // 验证 address 属性
    }
    @Test
    public void testSelectView() {
        // 模拟 Wrapper 返回值
        AddressView mockView = new AddressView();
        mockView.setId(2L);
        mockView.setName("Office");
        mockView.setAddress("456 Business St");

        // 模拟 baseMapper.selectView 的行为
        when(baseMapper.selectView(any(Wrapper.class))).thenReturn(mockView);

        // 调用方法
        AddressView result = addressService.selectView(new EntityWrapper<>());

        // 验证结果
        assertNotNull(result); // 验证结果不为空
        assertEquals("Office", result.getName()); // 验证 name 属性
        assertEquals("456 Business St", result.getAddress()); // 验证 address 属性
    }
}