package com.lm.flowershop.service.impl;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.lm.flowershop.entity.Foster;
import com.lm.flowershop.mapper.FosterMapper;
import com.lm.flowershop.service.IFosterService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;


@Service
public class ForsterServiceImpl extends ServiceImpl<FosterMapper, Foster> implements IFosterService {

    @Resource private FosterMapper fosterMapper;

    @Override
    public Page<Foster> findPage(Page<Foster> page, String phone, String fosName, String startTime, String fosOper, String fosStatus) {
        return fosterMapper.findPage(page,phone, fosName, startTime, fosOper, fosStatus);

    }
}
