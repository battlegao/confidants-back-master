package com.battlegao.confidant.model.enums;

/**
 * 队伍状态枚举
 */
public enum TeamStatusEnum {

    PUBLIC(0, "公开"),
    PRIVATE(1, "私有"),
    SECRET(2, "加密");

    private int value;

    private String text;


    public static TeamStatusEnum getEnumByValue(Integer value) {
        if (value == null) {
            return null;
        }
//        获取TeamStatusEnum的所有枚举数组
        TeamStatusEnum[] values = TeamStatusEnum.values();
//        遍历数组中的每个枚举值teamStatusEnum
        for (TeamStatusEnum teamStatusEnum : values) {
            if (teamStatusEnum.getValue() == value) {
                return teamStatusEnum;
            }
        }
        return null;
    }

    TeamStatusEnum(int value, String text) {
        this.value = value;
        this.text = text;
    }

    public int getValue() {
        return value;
    }

    public void setValue(int value) {
        this.value = value;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }
}
