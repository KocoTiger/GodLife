package com.godLife.io.web.product;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.godLife.io.common.Page;
import com.godLife.io.common.Search;
import com.godLife.io.service.domain.Product;
import com.godLife.io.service.product.ProductService;


//==> 상품관리 Controller
@Controller
@RequestMapping("/product/*")
public class ProductController {
	
	///Field
	@Autowired
	@Qualifier("productServiceImpl")
	private ProductService productService;
	//setter Method 구현 않음
		
	public ProductController(){
		System.out.println(this.getClass());
	}
	
	//==> classpath:config/common.properties  ,  classpath:config/commonservice.xml 참조 할것
	//==> 아래의 두개를 주석을 풀어 의미를 확인 할것
	@Value("#{commonProperties['pageUnit']}")
	//@Value("#{commonProperties['pageUnit'] ?: 3}")
	int pageUnit;
	
	@Value("#{commonProperties['pageSize']}")
	//@Value("#{commonProperties['pageSize'] ?: 2}")
	int pageSize;
	
	
	@RequestMapping( value="addProduct", method=RequestMethod.GET )
	public String addProduct() throws Exception {

		System.out.println("/product/addProductView : GET");
		
		return "/product/addProductView.jsp";
	}

	@RequestMapping( value="addProduct", method=RequestMethod.POST )
	public String addProduct( @ModelAttribute("product") Product product ) throws Exception {
		
		System.out.println("/product/addProduct : POST");
		//Business Logic
		productService.addProduct(product);

		return "forward:/product/getProductList.jsp";

	}

	@RequestMapping( value="getProduct", method=RequestMethod.GET )
	public String getProduct( @RequestParam("productNo") int productNo , Model model ) throws Exception {
		
		System.out.println("/product/getProduct : GET");
		
		//Business Logic
		Product product = productService.getProduct(productNo);
		// Model 과 View 연결
		model.addAttribute("product", product);
		//setAttribute로 쓰고 value값이 들어간다면,
		
		return "forward:/product/getProduct.jsp";
	}
	/////////////////////////////////Pass/////////////////////////////	

	
	@RequestMapping( value="updateProduct", method=RequestMethod.GET )
	public String updateProduct( @RequestParam("productNo") int productNo , Model model ) throws Exception{	
	
		System.out.println("/product/updateProduct : GET");
		
		//Business Logic
		Product product = productService.getProduct(productNo);
		// Model 과 View 연결
		model.addAttribute("product", product);
		
		return "forward:/product/updateProductView.jsp";

	}


	@RequestMapping( value="updateProduct", method=RequestMethod.POST )
	public String updateProduct( @ModelAttribute("product") Product product , Model model , HttpSession session) throws Exception{

		System.out.println("/product/updateProduct : POST");
		
		//Business Logic
		productService.updateProduct(product);

		return "redirect:/product/getProduct?productNo="+product.getProductNo();
	}

	@RequestMapping( value="listProduct" )
	public String listProduct( @ModelAttribute("search") Search search , Model model , HttpServletRequest request) throws Exception{

		System.out.println("/product/listProduct : GET / POST");
		
		if(search.getCurrentPage() ==0 ){
			search.setCurrentPage(1);
		}
		search.setPageSize(pageSize);
		
		// Business logic 수행
		Map<String , Object> map = productService.getProductList(search);
		
		Page resultPage = new Page( search.getCurrentPage(), ((Integer)map.get("totalCount")).intValue(), pageUnit, pageSize);
		System.out.println(resultPage);
		
		// Model 과 View 연결
		model.addAttribute("list", map.get("list"));
		model.addAttribute("resultPage", resultPage);
		model.addAttribute("search", search);
		
		return "forward:/product/listProduct.jsp";
	}
	
	@RequestMapping (value = "deleteProduct")
	public void deleteProduct( @ModelAttribute("product") Product productNo , Model model ) {
		
	System.out.println("/product/deleteProduct : POST");
	//Business Logic
	productService.deleteProduct(productNo);

	return "redirect:/product/deleteProduct?productNo";
	
	
	}
	
	
	
	
	
	
}