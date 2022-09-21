package tgc.edu.mcy.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import tgc.edu.mcy.custom.AjaxResult;
import tgc.edu.mcy.custom.JpgridUtils;
import tgc.edu.mcy.entity.Accredit;
import tgc.edu.mcy.entity.SysUser;
import tgc.edu.mcy.security.UserUtils;
import tgc.edu.mcy.service.AccreditService;

@Controller
@RequestMapping(value="/accredit")
public class AccreditController {
	@Autowired
	private AccreditService accreditDAO;
	@Autowired
	private UserUtils userUtils;
	
	@RequestMapping(value = "/all")
	public String all() {
		return "system/accredit_all";
	}
	
	@RequestMapping(value = "/findById")
	public String findById() {
		return "admin/accreditAll";
	}
	
	//显示所有授权信息
	@RequestMapping(value="/list")
	@ResponseBody
	public Object list(JpgridUtils form, String name, String unit) {
		Pageable pageable = form.buildPageableDesc();
		Page<Accredit> page = null;
		Specification<Accredit> spec = new Specification<Accredit>() {

			@Override
			public Predicate toPredicate(Root<Accredit> root, CriteriaQuery<?> query, CriteriaBuilder criteriaBuilder) {
				HashSet<Predicate> rules = new HashSet<>();
				if(StringUtils.hasText(name)) {
					rules.add(criteriaBuilder.like(root.get("lessee").get("name"), "%"+name+"%"));
				}else if(StringUtils.hasText(unit)) {
					rules.add(criteriaBuilder.like(root.get("lessee").get("lesseeAdmin").get("unit"), "%"+unit+"%"));
				}
				return criteriaBuilder.and(rules.toArray(new Predicate[rules.size()]));
			}			
		};
		page = accreditDAO.findAll(spec, pageable);
		HashMap<String , Object> result = form.getPageResult(page);
		return result;
	}
	
	//显示当前租户管理员所有授权信息
	@RequestMapping(value="/list1")
	@ResponseBody
	public Object list1(JpgridUtils form, String name) {
		SysUser user = userUtils.getUser();
		Pageable pageable = form.buildPageable();
		Page<Accredit> page = null;
		
		Specification<Accredit> spec = new Specification<Accredit>() {
			
			@Override
			public Predicate toPredicate(Root<Accredit> root, CriteriaQuery<?> query, CriteriaBuilder criteriaBuilder) {
				HashSet<Predicate> rules = new HashSet<>();
				if(StringUtils.hasText(name)) {
					rules.add(criteriaBuilder.like(root.get("lessee").get("name"), "%"+name+"%"));
				}
				rules.add(criteriaBuilder.equal(root.get("lessee").get("lesseeAdmin").get("id"), user.getId()));
				return criteriaBuilder.and(rules.toArray(new Predicate[rules.size()]));
			}			
		};
		page = accreditDAO.findAll(spec, pageable);
		HashMap<String , Object> result = form.getPageResult(page);
		return result;
	}
	
	//添加授权
	@RequestMapping(value="/save")
	@ResponseBody
	public Object save(Accredit model) throws ParseException {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date utilDate = sdf.parse(model.getBeginDate());   //把时间字符串转为date类型
		Date newDate = stepMonth(utilDate, model.getMonth());
		model.setOverDate(sdf.format(newDate));
		accreditDAO.save(model);
		return AjaxResult.build(true, "OK");
	}
	
	//在原有时间是加几个月
	public static Date stepMonth(Date sourceDate, int month) {
        Calendar c = Calendar.getInstance();
        c.setTime(sourceDate);
        c.add(Calendar.MONTH, month);
        return c.getTime();
    }
	
}
