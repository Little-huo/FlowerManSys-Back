package com.lm.flowershop.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.lm.flowershop.entity.Role;

import java.util.List;

/**
 * @author ry
 * @create 2024-12-26 15:24
 */
public interface IRoleService extends IService<Role> {
    void setRoleMenu(Integer roleId, List<Integer> menuIds);

    List<Integer> getRoleMenu(Integer roleId);
}
