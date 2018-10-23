package com.nf147.dao;

import com.nf147.entity.Station;
import java.util.List;

public interface StationMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table station
     *
     * @mbg.generated
     */
    int deleteByPrimaryKey(String stationid);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table station
     *
     * @mbg.generated
     */
    int insert(Station record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table station
     *
     * @mbg.generated
     */
    Station selectByPrimaryKey(String stationid);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table station
     *
     * @mbg.generated
     */
    List<Station> selectAll();

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table station
     *
     * @mbg.generated
     */
    int updateByPrimaryKey(Station record);
}