package safeseattle.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.*;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import safeseattle.dal.*;
import safeseattle.model.*;

@WebServlet("/postupdate")
public class PostUpdate extends HttpServlet{
		private static final long serialVersionUID = 1L;
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

	        // Retrieve post and validate.
	        //String userName = req.getParameter("username");
	        String postId = req.getParameter("postId");
	        messages.put("title", "Updating Post Content");
	        if (postId == null && postId.trim().isEmpty()) {
	            messages.put("success", "Please enter a valid PostId.");
	        } else {
	        	// Retrieve the Posts, and store as a message
	        	try {
	        		Posts post = postsDao.getPostById(Integer.parseInt(postId));
	        		if(post == null) {
	        			messages.put("success", "Post does not exist.");
	        		}
	        		req.setAttribute("post", post);
	        	} catch (SQLException e) {
					e.printStackTrace();
					throw new IOException(e);
		        }
	        }
	        
	        req.getRequestDispatcher("/PostUpdate.jsp").forward(req, resp);
		}
		
		@Override
	    public void doPost(HttpServletRequest req, HttpServletResponse resp)
	    		throws ServletException, IOException {
	        // Map for storing messages.
	        Map<String, String> messages = new HashMap<String, String>();
	        req.setAttribute("messages", messages);
	        messages.put("title", "Updating Post Content");

	        // Retrieve user and validate.
	        String postId = req.getParameter("postId");
	        if (postId == null || postId.trim().isEmpty()) {
	            messages.put("success", "Please enter a valid PostId.");
	        } else {
	        	try {
	        		Posts post = postsDao.getPostById(Integer.parseInt(postId));
	        		if(post == null) {
	        			messages.put("success", "PostId does not exist. No update to perform.");
	        		} else {
	        			String newContent = req.getParameter("content");
	        			if (newContent == null || newContent.trim().isEmpty()) {
	        	            messages.put("success", "Please enter a content message.");
	        	        } else {
	        	        	post = postsDao.updateContent(post, newContent);
	        	        	messages.put("success", "Successfully updated PostId " + postId);
	        	        }
	        		}
	        		req.setAttribute("post", post);
	        	} catch (SQLException e) {
					e.printStackTrace();
					throw new IOException(e);
		        }
	        }
	        
	        req.getRequestDispatcher("/PostUpdate.jsp").forward(req, resp);
	    }
		
		
}