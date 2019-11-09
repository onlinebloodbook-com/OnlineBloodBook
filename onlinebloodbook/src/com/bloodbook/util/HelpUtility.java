package com.bloodbook.util;

import java.util.ArrayList;
import java.util.List;




import com.bloodbook.bean.HelpBean;
import com.bloodbook.model.Help;

public class HelpUtility {

	
	public static Help createModel(HelpBean HelpBean){
		System.out.println("This is commonUtility2 createModel Methode Before Help Object");
		Help help=new Help();
		
		help.setHpId(HelpBean.getHpId());
		help.setHpName(HelpBean.getHpName());
		help.setHpContactNo(HelpBean.getHpContactNo());
		help.setHpEmail(HelpBean.getHpEmail());
		help.setHpAddress(HelpBean.getHpAddress());
		help.setHpProblem(HelpBean.getHpProblem());
		System.out.println("This is commonUtility createModel Methode After register Object");
		return help;
		
	}
	
   public static List<HelpBean> createHelpBeanList(List<Help> helps){
		
		
		List<HelpBean> beans=new ArrayList<HelpBean>();
		
		HelpBean helpBean=null;
		for(Help help: helps){
			helpBean=new HelpBean();
			
			
			helpBean.setHpId(help.getHpId());
			helpBean.setHpName(help.getHpName());
			helpBean.setHpContactNo(help.getHpContactNo());
			helpBean.setHpEmail(help.getHpEmail());
			helpBean.setHpAddress(help.getHpAddress());
			helpBean.setHpProblem(help.getHpProblem());
			helpBean.setHpDate(help.getHpDate());
			
		
         beans.add(helpBean);
			
			
			
		}
			return beans;
		
	}
}
