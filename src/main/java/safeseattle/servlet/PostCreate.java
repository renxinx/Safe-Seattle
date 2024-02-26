package safeseattle.servlet;

import safeseattle.dal.*;
import safeseattle.model.*;

import java.io.IOException;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.annotation.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/postcreate")
public class PostCreate extends HttpServlet {
	
	protected PostsDao postsDao;
	
	@Override
	public void init() throws ServletException {
		postsDao = PostsDao.getInstance();
	}
	
	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// Map for storing messages.
        Map<String, String> messages = new HashMap<String, String>();
        req.setAttribute("messages", messages);
        //Just render the JSP.   
        req.getRequestDispatcher("/PostCreate.jsp").forward(req, resp);
	}
	
	@Override
    public void doPost(HttpServletRequest req, HttpServletResponse resp)
    		throws ServletException, IOException {
        // Map for storing messages.
        Map<String, String> messages = new HashMap<String, String>();
        req.setAttribute("messages", messages);

        UsersDao usersDao = UsersDao.getInstance();
        ReportsDao reportsDao = ReportsDao.getInstance();
        // Retrieve and validate name.
        String StringPostId = req.getParameter("postId");
        Integer postId = Integer.valueOf(StringPostId);
        // Users user, Reports report, String title, String content, Timestamp created
        String stringUserId =  req.getParameter("userId");
        Integer userId = Integer.valueOf(stringUserId);
        // Users user;
		// try {
        //     int userid = Integer.valueOf(stringUserId);
		// 	user = usersDao.getUserByUserId(userid);
		// } catch (SQLException e) {
		
		// 	e.printStackTrace();
		// 	throw new IOException(e);
		// }

        String reportId =  req.getParameter("reportId");
        
        // Reports reports;
		// try {
		// 	reports = reportsDao.getReportById(stringreportId);
		// } catch (SQLException e) {
		
		// 	e.printStackTrace();
		// 	throw new IOException(e);
		// }

        String title = req.getParameter("title");
        String content = req.getParameter("content");
         

        String stringcreated = req.getParameter("created");
        Timestamp timestamp = null;
        try {
//                SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss.SSS");
//                Date parsedDate = dateFormat.parse(new Date());
            timestamp = new java.sql.Timestamp(new Date().getTime());
        } catch(Exception e) { 
            
			e.printStackTrace();
			throw new IOException(e);
        }
    	

        try {
        	// Exercise: parse the input for StatusLevel.
        	Posts post = new Posts(postId, usersDao.getUserByUserId(userId), reportsDao.getReportById(reportId), title, content,timestamp);
        	post = postsDao.create(post);
        	messages.put("success", "Successfully created " + postId);
        } catch (SQLException e) {
			e.printStackTrace();
			throw new IOException(e);
        }
        
        req.getRequestDispatcher("/PostCreate.jsp").forward(req, resp);
    }
}