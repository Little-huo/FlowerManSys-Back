package com.lm.flowershop.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.lm.flowershop.entity.Buy;


public interface BuyMapper extends BaseMapper<Buy> {
     Page<Buy> findPage(Page<Buy> page, String buyid, String buyApply,String buyer,String buyName, String buyStatus, String startTime, String endTime);

    Page<Buy> findPage1(Page<Buy> page);


}
