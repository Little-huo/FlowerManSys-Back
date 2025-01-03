package com.lm.flowershop.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.lm.flowershop.controller.dto.UserPasswordDTO;
import com.lm.flowershop.entity.Adminlogin;
import com.lm.flowershop.entity.Manager;
import org.apache.ibatis.annotations.Update;

/**
 * @author ry
 * @create 2024-12-17 16:12
 */

public interface AdminloginMapper extends BaseMapper<Adminlogin> {
}