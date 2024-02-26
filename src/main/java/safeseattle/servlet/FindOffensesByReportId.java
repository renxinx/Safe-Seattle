package safeseattle.servlet;

import safeseattle.dal.*;
import safeseattle.model.*;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.annotation.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/findoffensesbyreportid")
public class FindOffensesByReportId extends HttpServlet {
	
	protected OffensesDao offensesDao;
	
	public void init() throws ServletException {
		offensesDao = OffensesDao.getInstance();
	}
	
	
	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
		throws ServletException, IOException {
		// Map for storing messages.
		Map<String, String> messages = new HashMap<String, String>();
		req.setAttribute("message", messages);
		
		List<Offenses> offenses = new ArrayList<Offenses>();
		
		// Retrieve and validate offense.
		String reportId = req.getParameter("reportId");
		if (reportId == null || reportId.trim().isEmpty()) {
			messages.put("success", "Please enter a valid reportId.");
		} else {
			// Retrieve Offenses, and store as a message.
			try {
				offenses = offensesDao.getOffensesByReportId(reportId);
			} catch (SQLException e) {
				e.printStackTrace();
				throw new IOException(e);
			}
			messages.put("success", "Displaying results for " + reportId);
			messages.put("previousOffense", reportId);
		}
		req.setAttribute("offenses", offenses);
		req.getRequestDispatcher("/FindOffensesByReportId.jsp").forward(req, resp);
	}
	
	@Override
	public void doPost(HttpServletRequest req, HttpServletResponse resp)
		throws ServletException, IOException {
		// Map for storing messages.
		Map<String, String> messages = new HashMap<String, String>();
		req.setAttribute("messages", messages);
		
		List<Offenses> offenses = new ArrayList<Offenses>();
		
		String reportId = req.getParameter("reportId");
		if (reportId == null || reportId.trim().isEmpty()) {
			messages.put("success", "please enter a valid reportId.");
		} else {
			try {
				offenses = offensesDao.getOffensesByReportId(reportId);
			} catch (SQLException e) {
				e.printStackTrace();
				throw new IOException(e);
			}
			messages.put("success", "Displaying results for " + reportId);
		}
		req.setAttribute("offenses", offenses);
		req.getRequestDispatcher("/FindOffensesByReportId.jsp").forward(req, resp);
	}
}