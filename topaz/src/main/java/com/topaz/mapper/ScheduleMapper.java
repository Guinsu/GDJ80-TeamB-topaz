package com.topaz.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.topaz.dto.Schedule;

@Mapper
public interface ScheduleMapper {
	
	/* 분류 번호: #6 - 사내 일정 관리 페이지 :: 전체조회 */
	List<Map<String, Object>> selectScheduleList(String inputState);
	
	/* 분류 번호: #6 - 사내 일정 관리 페이지 :: 오늘의 일정조회 */
	List<Map<String, Object>> selectScheduleTodayList();
	
	/* 분류 번호: #6 - 사내 일정 관리 페이지 :: 사내일정 등록 */
	int insertSchedule(Schedule schedule); 
	
	/* 분류 번호: #6 - 사내 일정 상세보기 페이지 :: 상세조회 */
	Schedule selectScheduleOne(String scheduleNo);
	
	/* 분류 번호: #6 - 사내 일정 상세보기 페이지 :: 사내일정 수정 */
	int updateSchedule(Schedule schedule);
	
	/* 분류 번호: #6 - 사내 일정 상세보기 페이지 :: 사내일정 삭제(사용여부 Y -> N) */
	int deleteSchedule(Schedule schedule);
	
	/* 분류 번호: #6 - 사내 일정 관리 페이지 :: 차트 통계 */
	List<Map<String, Object>> getScheduleChart();
}
