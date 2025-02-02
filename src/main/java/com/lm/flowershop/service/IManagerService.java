package com.lm.flowershop.service;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;
import com.lm.flowershop.controller.dto.ManagerDTO;
import com.lm.flowershop.controller.dto.UserPasswordDTO;
import com.lm.flowershop.entity.Manager;
import com.lm.flowershop.entity.Menu;
import com.lm.flowershop.entity.Sort;

import java.util.List;


public interface IManagerService extends IService<Manager> {
    ManagerDTO login(ManagerDTO managerDTO);
    void updatePassword(UserPasswordDTO userPasswordDTO);
    Page<Manager> findPage(Page<Manager> objectPage);
    Page<Manager> findPage1(Page<Manager> objectPage);
    Page<Manager> findPage2(Page<Manager> objectPage);



}
