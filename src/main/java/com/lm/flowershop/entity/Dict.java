package com.lm.flowershop.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

/**
 * @author ry
 * @create 2024-12-27 8:46
 */
@TableName("sys_dict")
@Data
public class Dict {
    private String name;
    private String value;
    private String type;
}
