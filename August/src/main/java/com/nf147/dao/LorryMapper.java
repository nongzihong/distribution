package com.nf147.dao;

import com.nf147.entity.Lorry;
import java.util.List;

public interface LorryMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table lorry
     *
     * @mbg.generated
     */
    int deleteByPrimaryKey(String lorryid);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table lorry
     *
     * @mbg.generated
     */
    int insert(Lorry record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table lorry
     *
     * @mbg.generated
     */
    Lorry selectByPrimaryKey(String lorryid);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table lorry
     *
     * @mbg.generated
     */
    List<Lorry> selectAll();

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table lorry
     *
     * @mbg.generated
     */
    int updateByPrimaryKey(Lorry record);
}