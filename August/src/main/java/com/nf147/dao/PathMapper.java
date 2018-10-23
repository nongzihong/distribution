package com.nf147.dao;

import com.nf147.entity.Path;
import java.util.List;

public interface PathMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table path
     *
     * @mbg.generated
     */
    int deleteByPrimaryKey(String pathid);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table path
     *
     * @mbg.generated
     */
    int insert(Path record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table path
     *
     * @mbg.generated
     */
    Path selectByPrimaryKey(String pathid);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table path
     *
     * @mbg.generated
     */
    List<Path> selectAll();

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table path
     *
     * @mbg.generated
     */
    int updateByPrimaryKey(Path record);
}