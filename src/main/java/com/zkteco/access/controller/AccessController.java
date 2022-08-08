package com.zkteco.access.controller;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


import com.zkteco.access.entity.Access;
import com.zkteco.access.service.AccessService;

@Controller
public class AccessController {

	@Autowired
	AccessService accessService;
    
	public AccessController(AccessService accessService) {
		super();
		this.accessService = accessService;
	}
	
	List<Access>flatsList=new ArrayList<>();
	
	@RequestMapping("access")
	public String apartmentsEntity()
	{
		return "access.jsp";
	}
	
	@RequestMapping("addAccess")
	public String addAccess( @Valid Access access)
	{
		accessService.saveAccess(access);
		return "showAllAccessDetails";
	}
	
	@RequestMapping("showAllAccessDetails")
	public ModelAndView showApartmentAllflatDetails() {
	ModelAndView mav = new ModelAndView("accessShow.jsp");
	flatsList=accessService.getAllAccesses();
	mav.addObject("flatsList",flatsList);
	return mav;
	}
	
	
	
	 @RequestMapping("getAccessDetails")
	 public ModelAndView getFlatDetails( @RequestParam int id ){
	    ModelAndView mav = new ModelAndView("getAccessDetails.jsp");
	
	    Access access= accessService.getAccessById(id);
	     mav.addObject(access);
	   
	  	return mav;
	  	}
	 
	 
	 @RequestMapping("updateAccessDetails")
		public ModelAndView updateFlatDetails( Access access)
		{
			ModelAndView mav = new ModelAndView("updateAccessDetails.jsp");

			Access exist=accessService.updateAccess(access);
		
		
			
			mav.addObject(exist);
			return mav;
		}
	 
	 
	 @RequestMapping("delAccessDetails")
		public ModelAndView delFlatDetails(@RequestParam int id )
		{
			ModelAndView mav = new ModelAndView("delAccessDetails.jsp");
			Access access=accessService.deleteAccess(id);
			mav.addObject(access);
			return mav;
}
	 
	 
	 @GetMapping("/getAccessName")
		public ModelAndView getAccessName(@RequestParam  String accessName)
		{
			ModelAndView mav = new ModelAndView("getAccessName.jsp");
			
			List<Access>accessList = accessService.findByName(accessName);
			mav.addObject(accessList);
			
			return mav;
			
		}
	 
	 
	 @GetMapping("getDateRange")
		public ModelAndView getDateRange(@RequestParam Date date1,@RequestParam Date date2)
		{
			ModelAndView mav = new ModelAndView("getDateRange.jsp");
			
			List<Access>accessList = accessService.findByDate(date1, date2);
			mav.addObject(accessList);
			
			return mav;
			
		}
}
