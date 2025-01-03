package com.lm.flowershop.service;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;
import com.lm.flowershop.entity.Product;
import com.lm.flowershop.entity.Supplier;

/**
 * @author ry
 * @create 2024-12-26 15:24
 */
public interface ISupplierService extends IService<Supplier> {

    Page<Supplier> findPage(Page<Supplier> page, String supName);
}
