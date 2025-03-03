package com.app.home.schedule.car;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.app.home.schedule.goods.GoodsVO;
import com.app.home.schedule.goods.ReserveVO;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class CarService {
	
	@Autowired
	private CarMapper carMapper;
	
	// 예약 취소
	public int setDelete(ReserveVO reserveVO) throws Exception {
		
		int result = carMapper.setDelete(reserveVO);
		
		return result;
	}
	
	// 예약 변경
	public int setUpdate(ReserveVO reserveVO) throws Exception {
		
		int result = carMapper.setUpdate(reserveVO);
		
		log.info("Service SetUpdate : {}", reserveVO);
		
		return result;
	}
	
	// 예약 상세보기
	public ReserveVO getReserveDetail(ReserveVO reserveVO) throws Exception {
		
		return carMapper.getReserveDetail(reserveVO);
	}
	
	// 예약 리스트
	public List<ReserveVO> getReserveList(ReserveVO reserveVO) throws Exception {
		
		return carMapper.getReserveList(reserveVO);
	}

	// 예약
	public int setReserve(ReserveVO reserveVO) throws Exception {
		
		int result = carMapper.setReserve(reserveVO);
		
		return result; 
	}
	
	// 상세보기
	public GoodsVO getGoods(GoodsVO goodsVO) throws Exception {
		
		return carMapper.getGoods(goodsVO);
	}
	
	public List<GoodsVO> getGoodsList(GoodsVO goodsVO) throws Exception {
		
		return carMapper.getGoodsList(goodsVO);
	}

}
