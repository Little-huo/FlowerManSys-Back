package com.lm.flowershop.controller.dto;

import com.lm.flowershop.entity.Menu;
import lombok.Data;

import java.util.Date;
import java.util.List;



@Data
public class ManagerDTO {
    private String adname;
    private String adpwd;
    private Date createTime;
    private String avatarUrl;
    private String nikename;
    private String token;
    private String role;
    private List<Menu> menus;
}
