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
	
	@RequestMapping("admin_sub_category.do")
	public ModelAndView adminCategoryManagement() {
		ModelAndView mav = new ModelAndView("admin_sub/admin_sub_category");
		
		return mav;
	}
	
	@RequestMapping("admin_sub_member_benefit.do")
	public ModelAndView adminMemberBenefit() {
		ModelAndView mav = new ModelAndView("admin_sub/admin_sub_member_benefit");
		
		return mav;
	}
	
	@RequestMapping("admin_sub_member_list.do")
	public ModelAndView adminMemberList() {
		ModelAndView mav = new ModelAndView("admin_sub/admin_sub_member_list");
		
		return mav;
	}
	
	@RequestMapping("admin_sub_member_out.do")
	public ModelAndView adminMemberOut() {
		ModelAndView mav = new ModelAndView("admin_sub/admin_sub_member_out");
		
		return mav;
	}
	
	@RequestMapping("admin_sub_member_rating.do")
	public ModelAndView adminMemberRating() {
		ModelAndView mav = new ModelAndView("admin_sub/admin_sub_member_rating");
		
		return mav;
	}
	
	@RequestMapping("admin_sub_member_rest.do")
	public ModelAndView adminMemberRest() {
		ModelAndView mav = new ModelAndView("admin_sub/admin_sub_member_rest");
		
		return mav;
	}
	
	@RequestMapping("admin_sub_order_cancel.do")
	public ModelAndView adminOrderCancel() {
		ModelAndView mav = new ModelAndView("admin_sub/admin_sub_order_cancel");
		
		return mav;
	}
	
	@RequestMapping("admin_sub_order_card.do")
	public ModelAndView adminOrderCard() {
		ModelAndView mav = new ModelAndView("admin_sub/admin_sub_order_card");
		
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
	
	@RequestMapping("admin_sub_product_deleteList.do")
	public ModelAndView adminProductDeleteList() {
		ModelAndView mav = new ModelAndView("admin_sub/admin_sub_product_deleteList");
		
		return mav;
	}
	
	@RequestMapping("admin_sub_receipt.do")
	public ModelAndView adminReceipt() {
		ModelAndView mav = new ModelAndView("admin_sub/admin_sub_receipt");
		
		return mav;
	}
	
	@RequestMapping("admin_sub_product_pqty.do")
	public ModelAndView adminProductPqty() {
		ModelAndView mav = new ModelAndView("admin_sub/admin_sub_product_pqty");
		
		return mav;
	}
	
	@RequestMapping("admin_sub_store_stat.do")
	public ModelAndView adminStoreStat() {
		ModelAndView mav = new ModelAndView("admin_sub/admin_sub_store_stat");
		
		return mav;
	}
	
	@RequestMapping("content_product.do")
	public ModelAndView contentProduct() {
		ModelAndView mav = new ModelAndView("mall_client/content_product");
		
		return mav;
	}
}
