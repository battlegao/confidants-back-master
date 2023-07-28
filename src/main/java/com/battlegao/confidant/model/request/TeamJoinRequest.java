package com.battlegao.confidant.model.request;

// 本项目_所属 [程序员鱼皮](https://github.com/libattlegao)

import lombok.Data;

import java.io.Serializable;

/**
 * 用户加入队伍请求体

 */
@Data
public class TeamJoinRequest implements Serializable {

    private static final long serialVersionUID = 3191241716373120793L;

    /**
     * id
     */
    private Long teamId;

    /**
     * 密码
     */
    private String password;
}
