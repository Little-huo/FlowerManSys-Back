package com.lm.flowershop.service;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;
import com.lm.flowershop.entity.Product;
import com.lm.flowershop.entity.Role;
import com.lm.flowershop.entity.Unit;

import java.util.List;


public interface IProductService extends IService<Product> {

    Page<Product> findPage(Page<Product> page, String name,String psort);



}
