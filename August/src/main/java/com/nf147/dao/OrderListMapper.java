package com.nf147.dao;

import com.nf147.entity.OrderList;
import java.util.List;

public interface OrderListMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table order_list
     *
     * @mbg.generated
     */
    int deleteByPrimaryKey(String orderid);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table order_list
     *
     * @mbg.generated
     */
    int insert(OrderList record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table order_list
     *
     * @mbg.generated
     */
    OrderList selectByPrimaryKey(String orderid);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table order_list
     *
     * @mbg.generated
     */
    List<OrderList> selectAll();

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table order_list
     *
     * @mbg.generated
     */
    int updateByPrimaryKey(OrderList record);
}