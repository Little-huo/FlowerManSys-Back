package com.lm.flowershop.service;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;
import com.lm.flowershop.entity.*;

import java.util.List;


public interface ISortService extends IService<Sort> {

    Page<Sort> findPage(Page<Sort> objectPage, String sortname);
    Page<Sort> findPage1(Page<Sort> objectPage);

}
