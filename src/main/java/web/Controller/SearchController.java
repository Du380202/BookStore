package web.Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import web.Dao.AuthorDao;
import web.Dao.CategoryDao;
import web.Dao.ProductDao;
import web.Entity.Sach;
import web.Entity.TheLoai;

@Controller
public class SearchController {
	
	@Autowired
	private ProductDao productDao;
	
	@Autowired
	private CategoryDao categoryDao ;
	@RequestMapping(value="search") 
	public void searchControlle( HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		String txtSearch = request.getParameter("txt");
		List<Sach> listproduct = productDao.getDataByKeyWord(txtSearch);
		PrintWriter out = response.getWriter();
		for (Sach o : listproduct) {
			TheLoai theLoai = categoryDao.getCategoryByID(o.getMaTheLoai());
			out.println("<div class=\"media row\">\r\n"
					+ "  <div class=\"img-holder ml-1 mr-2 col-4\">\r\n"
					+ "    <a href=\"javascript:void(0)\"><img src=\"" + o.getAnh1() +"\" class=\"align-self-center\" alt=\"cartitem\"></a>\r\n"
					+ "  </div>\r\n"
					+ "  <div class=\"media-body mt-auto mb-auto col-8\">\r\n"
					+ "     <h5 class=\"name\"><a href=\"javascript:void(0)\">" + o.getTenSach() +"</a></h5>\r\n"
					+ "     <p class=\"category\">" + theLoai.getTenTheLoai() + "</p>\r\n"
					+ "     <a class=\"btn black-sm-btn\" href=\"bookShop\"><i class=\"fas fa-shopping-bag\"></i></a>\r\n"
					+ "     <a class=\"btn black-sm-btn\" href=\"detail?id=" + o.getMaSach() + "\"><i class=\"fas fa-eye\"></i></a>\r\n"
					+ "  </div>\r\n"
					+ "</div>");
		}
	}
}
