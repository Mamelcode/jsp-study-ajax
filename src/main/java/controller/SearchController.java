package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

@WebServlet("/api/search")
public class SearchController extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Gson gson = new Gson();
		
		String q = req.getParameter("q");
		resp.setContentType("text/plain;charset=utf-8");
		
		List<String> words = List.of("김우빈", "김우석", "김민준", "박서준", "박보검", "박해일", "송혜교", "송중기", "송강호", "송강");
		
		List<String> result = new ArrayList<>();
		PrintWriter out = resp.getWriter();
		for(String w : words) {
			if(w.startsWith(q)) {
				result.add(w);
			}
		}
		
		
		out.println(gson.toJson(result));
		
	}
}
