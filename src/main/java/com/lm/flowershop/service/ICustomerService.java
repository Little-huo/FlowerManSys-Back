package com.lm.flowershop.service;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;
import com.lm.flowershop.entity.Customer;
import com.lm.flowershop.entity.Product;
import com.lm.flowershop.entity.Supplier;


public interface ICustomerService extends IService<Customer> {
    Page<Customer> findPage(Page<Customer> page, String cusName);
    int nameValidate();
    int saleValidate();

}
