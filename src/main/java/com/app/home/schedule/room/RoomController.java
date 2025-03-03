package com.app.home.schedule.room;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.app.home.schedule.goods.GoodsService;
import com.app.home.schedule.goods.GoodsVO;
import com.app.home.schedule.goods.ReserveVO;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping(value = "/goods/*")
public class RoomController
{
	@Autowired
	private RoomService roomService;

	@GetMapping("/room/roomList")
	public ModelAndView getRoomList(GoodsVO goodsVO) throws Exception
	{
		ModelAndView modelAndView = new ModelAndView();
		List<GoodsVO> goodsVOs = roomService.getRoomList(goodsVO);

		log.info("goodVO list: {}", goodsVOs);

		modelAndView.addObject("goodVO", goodsVOs);
		modelAndView.setViewName("/goods/room/roomList");

		return modelAndView;
	}

	@GetMapping("/room/roomDetail")
	public ModelAndView getRoomDetail(GoodsVO goodsVO) throws Exception
	{
		log.info("======= roomDetail =======");
		ModelAndView modelAndView = new ModelAndView();
		goodsVO = roomService.getRoomTotal(goodsVO);

		// log.info("goodVO 1 : {}", goodsVO);

		modelAndView.addObject("goodDetail", goodsVO);
		modelAndView.setViewName("/goods/room/roomDetail");

		return modelAndView;
	}

	@GetMapping("/room/roomReserve")
	public ModelAndView setRoomReserve(GoodsVO goodsVO, GoodsRoomVO goodsRoomVO) throws Exception
	{
		log.info("======= get roomReserve =======");
		ModelAndView modelAndView = new ModelAndView();
		goodsVO = roomService.getRoomTotal(goodsVO);
		List<GoodsRoomVO> roomVOs = roomService.getReserveStartTime(goodsRoomVO);
		log.info("roomVOs: {}", roomVOs);

		// log.info("goodVO 1 : {}", goodsVO);

		modelAndView.addObject("stTime", roomVOs);
		modelAndView.addObject("goodDetail", goodsVO);
		modelAndView.setViewName("/goods/room/roomReserve");

		return modelAndView;
	}

	@PostMapping("/room/roomReserve")
	public ModelAndView setRoomReserve(GoodsRoomVO goodsRoomVO) throws Exception
	{
		log.info("======= post roomReserve =======");
		ModelAndView modelAndView = new ModelAndView();
		int rs = roomService.setRoomReserve(goodsRoomVO);

		log.info("room reserve: {}", rs);

		modelAndView.setViewName("redirect:/goods/room/roomList");

		return modelAndView;
	}

	@GetMapping("/room/roomResInfo")
	public ModelAndView getRoomResInfo(GoodsRoomVO goodsRoomVO) throws Exception
	{
		log.info("====== get Info =====");
		ModelAndView modelAndView = new ModelAndView();
		List<ReserveVO> reserveVOs = roomService.getResInfo(goodsRoomVO);

		log.info("roomVOs: {}", reserveVOs);

		modelAndView.addObject("roomInfo", reserveVOs);
		modelAndView.setViewName("goods/room/roomResInfo");

		return modelAndView;
	}
}
