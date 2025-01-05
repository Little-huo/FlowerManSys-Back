package com.lm.flowershop.service;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;
import com.lm.flowershop.entity.Buy;
import com.lm.flowershop.entity.Foster;
import com.lm.flowershop.entity.Sale;


public interface IFosterService extends IService<Foster> {

    Page<Foster> findPage(Page<Foster> page, String phone,String fosName,String startTime,String fosOper,String fosStatus);

}
