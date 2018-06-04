package com;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ldyb.mysqlconnection.SqlConnection;
import com.mysql.jdbc.Statement;

/**
 * Servlet implementation class fatie
 */
@WebServlet("/fatie")
public class fatie extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public fatie() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setHeader("Content-type", "text/html;charset=UTF-8");
		response.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		PrintWriter out=response.getWriter();
		SqlConnection con=new SqlConnection();
		String head=request.getParameter("head");
		String test=request.getParameter("text");
		String imge=request.getParameter("image");
		String type=(String)request.getParameter("leibie");
		String sql="insert into tie(t_id,t_txt,t_type,t_head) values (21,'"+test+"','"+type+"','"+head+"')";
		Statement stmt = null;
		try {
			stmt =  (Statement) con.getConnection().createStatement();
			 int res=stmt.executeUpdate(sql);
			 if(res>0) {
				 out.print("<div align='center'>发帖成功</div>");
			 }
			 else {
				 out.print("<div align='center'>发帖失败</div>");
			 }
		}catch(SQLException e) {
			e.printStackTrace();
			
		}finally {
			con.close();
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
