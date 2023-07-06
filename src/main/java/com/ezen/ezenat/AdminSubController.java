package com.ezen.ezenat;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AdminSubController {

	@RequestMapping("admin_sub_main.do")
	public ModelAndView adminMain() {
		ModelAndView mav = new ModelAndView("admin_sub/admin_sub_main");
		
		return mav;
	}
	
	@RequestMapping("admin_sub_product_list.do")
	public ModelAndView adminProductList() {
		ModelAndView mav = new ModelAndView("admin_sub/admin_sub_product_list");
		
		return mav;
	}
	
	@RequestMapping("admin_sub_product_insert.do")
	public ModelAndView adminProductinput() {
		ModelAndView mav = new ModelAndView("admin_sub/admin_sub_product_insert");
		
		return mav;
	}
	
	@RequestMapping("admin_sub_order_insert.do")
	public ModelAndView adminOrderinput() {
		ModelAndView mav = new ModelAndView("admin_sub/admin_sub_order_insert");
		
		return mav;
	}
	
	@RequestMapping("admin_sub_order_cash.do")
	public ModelAndView adminOrderCash() {
		ModelAndView mav = new ModelAndView("admin_sub/admin_sub_order_cash");
		
		return mav;
	}
	
	@RequestMapping("admin_sub_order_exchange.do")
	public ModelAndView adminOrderExchange() {
		ModelAndView mav = new ModelAndView("admin_sub/admin_sub_order_exchange");
		
		return mav;
	}
	
	@RequestMapping("admin_sub_order_list.do")
	public ModelAndView adminOrderList() {
		ModelAndView mav = new ModelAndView("admin_sub/admin_sub_order_list");
		
		return mav;
	}
	
	@RequestMapping("admin_sub_order_refund.do")
	public ModelAndView adminOrderRefund() {
		ModelAndView mav = new ModelAndView("admin_sub/admin_sub_order_refund");
		
		return mav;
	}
	
	@RequestMapping("admin_sub_order_return.do")
	public ModelAndView adminOrderReturn() {
		ModelAndView mav = new ModelAndView("admin_sub/admin_sub_order_return");
		
		return mav;
	}
	
	
	@RequestMapping("admin_sub_receipt.do")
	public ModelAndView adminReceipt() {
		ModelAndView mav = new ModelAndView("admin_sub/admin_sub_receipt");
		
		return mav;
	}
	
	
	@RequestMapping("admin_sub_store_stat.do")
	public ModelAndView adminStoreStat() {
		ModelAndView mav = new ModelAndView("admin_sub/admin_sub_store_stat");
		
		return mav;
	}
	//카드거래 조회, 주문 입력 창

}
