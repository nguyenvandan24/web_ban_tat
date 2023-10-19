package controller;

import dao.ProductDAO;
import model.Product;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * Servlet implementation class renderSP
 */
@WebServlet("/render")
public class Render extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public Render() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            response.setContentType("text/html;charset=UTF-8");
            request.setCharacterEncoding("UTF-8");

            String indexString = request.getParameter("index");
            System.out.println(indexString);
            if(indexString==null) {
                indexString = "1";
            }

            int index= Integer.parseInt(indexString);
            ProductDAO dao = new ProductDAO();

            int count = dao.getAllProduct().size();//số lượng sp trong ds
            int pageSize = 15;                          // số lượng sp trong 1 trang
            int endPage =0;                             // số trang cuối
            endPage = count/pageSize;
            if(count% pageSize !=0 && count> pageSize) {
                endPage ++;
            }
            if(endPage==0) {
                endPage=1;
            }
            List<Product> listSP = dao.render(index, pageSize);
            System.out.println(listSP);

            request.setAttribute("listSP", listSP);
            request.setAttribute("endPage", endPage);
            request.setAttribute("index", index);

            request.getRequestDispatcher("/shop.jsp").forward(request, response);
        }catch (Exception e){
            e.printStackTrace();
        }
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        doGet(request, response);
    }

}