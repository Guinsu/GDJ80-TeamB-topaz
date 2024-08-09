package com.topaz.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.topaz.dto.Employee;
import com.topaz.dto.EmployeeRequest;

@Mapper
public interface EmpMapper {
	
	/* ==== 직원 === */
	
	/* 분류 번호 :  #4 - 직원등록 */
	public int insertEmp(Employee employee);
	
	/* 분류 번호 :  #4 - 직원 휴가 등록 */
	public int insertEmpLeave(Map<String, Object> paramMap);
	
	/* 분류 번호 :  #4 - 직원 휴가 수정 */
	public int updateEmpLeave(Map<String, Object> paramMap);
	
	/* 분류 번호 :  #4 - 직원번호 중복 확인 */
	public String selectEmpNo(String empNo);
	
	/* 분류 번호 :  #4 - 전체 직원조회 */
	public  List<Map<String, Object>> selectEmpAll(Map<String, Object> empList);
	
	/* 분류 번호 :  #4 - 전체 직원수 조회 */
	public  int selectEmpAllCnt(Map<String, Object> paramMap);
	
	/* 분류 번호 :  #4 - 전체 직원 잔여 휴가 조회 */
	public  List<Map<String, Object>> selectEmpLeave(Map<String, Object> paramMap);
	
	/* 분류 번호 :  #4 - 전체 직원 잔여 휴가 수 조회 */
	public  int selectEmpLeaveCnt(Map<String, Object> paramMap);
	
	/* 분류 번호 :  #4 - 직원 상세 조회 */
	public  Map<String, Object> selectEmpOne(String empNo);
	
	/* 분류 번호 :  #4 - 직원 정보 수정 */
	public int modifyEmpOne(Map<String, Object> paramMap);
	
	/* 분류 번호 :  #4 - 직원 정보 삭제 */
	public int deleteEmpOne(Employee employee);
	
	/* 분류 번호 :  #4 - 직원 비밀번호 수정 */
	public int modifyEmpPw(Map<String, Object> paramMap);
	
	/* 분류 번호 :  #2 - 변경 비밀번호 중복 확인 */
	public String selectNewPw(Map<String, Object> paramMap);
	
	/* 분류 번호 :  #2 - 이전 비밀번호 저장 */
	public int insertNewPw(Map<String, Object> paramMap);
	
	/* 분류 번호 :  #4 - 전체 직원 조회(조직도) */
	public List<Map<String, Object>> selectEmpAllInChart();
	
	/* 분류 번호 :  #4 - 전체 직원 근무 조회 */
	public List<Map<String, Object>> selectEmpAttendance(Map<String, Object> empList);
	
	/* 분류 번호 :  #4 - 전체 근무수 조회 */
	public int selectEmpAttendanceAllCnt(Map<String, Object> paramMap);

	/* 분류 번호 :  #2 - 쪽지 전송할 직원 조회 */
	public List<Map<String, Object>> selectEmpName(String empName);
	
	/* 분류 번호 :  #2 - 나의 휴가 조회 */
	public List<Map<String, Object>> selectMyLeave(Map<String, Object> paramMap);
	
	/* 분류 번호 :  #4 - 나의 휴가 사용 수 조회 */
	public int selectMyLeaveCnt(Map<String, Object> paramMap);
	
	/* 분류 번호 :  #4 - 나의 남은 휴가 수 조회 */
	public List<Map<String, Object>> selectLeaveCnt(Map<String, Object> paramMap);
	
	/* 분류 번호 :  #3 - 월차 자동 입력 */
	public int updateMonthLeave();

	
	/* ==== 쪽지 === */
	
	/* 분류 번호 :  #2 - 쪽지 전송 */
	public  int insertNote(Map<String, Object> paramMap);
	
	/* 분류 번호 :  #2 - 쪽지 수신 업데이트 */
	public int updateEmpNoteState(String noteId);
	
	/* 분류 번호 :  #2 - 개인 수신 쪽지수 조회 */
	public int selectEmpNotRecCnt(Map<String, Object> paramMap);
	
	/* 분류 번호 :  #2 - 수신 쪽지 조회 */
	public  List<Map<String, Object>> selectNoteReceived(Map<String, Object> noteList);
	
	/* 분류 번호 :  #2 - 수신 쪽지수 조회 */
	public int selectNoteReceivedCnt(Map<String, Object> paramMap);
	
	/* 분류 번호 :  #2 - 발신 쪽지 조회 */
	public  List<Map<String, Object>> selectNoteList(Map<String, Object> noteList);
	
	/* 분류 번호 :  #2 - 발신 쪽지수 조회 */
	public int selectNoteListCnt(Map<String, Object> paramMap);
	
	/* 분류 번호 :  #2 - 휴지통 쪽지 조회 */
	public  List<Map<String, Object>> selectNoteTrash(Map<String, Object> noteList);
	
	/* 분류 번호 :  #2 - 휴지통 쪽지수 조회 */
	public int selectNoteTrashCnt(Map<String, Object> paramMap);
	
	/* 분류 번호 :  #2 - 쪽지 복구 */
	public int restorationNote(Map<String, Object> params);
	
	/* 분류 번호 :  #2 - 발신 쪽지 삭제 */
	public int deleteSenNote(List<String> noteIds);
	
	/* 분류 번호 :  #2 - 수신 쪽지 삭제 */
	public int deleteRecNote(List<String> noteIds);
	
	/* 분류 번호 :  #2 - 쪽지 삭제 */
	public int deleteNote(List<String> noteIds);
	
	/* 분류 번호 :  #2 - 쪽지 상세 보기 */
	public Map<String, Object> selectNoteDetail(String noteId);
	
	/* 분류 번호 :  #2 - 나의 발신 쪽지 수 보기 */
	public List<Map<String, Object>> selectMyNoteSendCnt(String empNo);
	
	/* 분류 번호 :  #2 - 나의 수신 쪽지 수 보기 */
	public List<Map<String, Object>> selectMyNoteRecCnt(String empNo);
	
	/* 분류 번호 :  #4 - 부서별 발신 쪽지 수 보기 */
	public List<Map<String, Object>> selectDeptNoteSendCnt(String empNo);
	
	/* 분류 번호 :  #4 - 부서별 수신 쪽지 수 보기 */
	public List<Map<String, Object>> selectDeptNoteRecCnt(String empNo);
	
}
