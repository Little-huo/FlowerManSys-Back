package com.lm.flowershop.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.lm.flowershop.entity.Menu;

import java.util.List;


public interface IMenuService extends IService<Menu> {
    List<Menu> findMenus(String name);
}
