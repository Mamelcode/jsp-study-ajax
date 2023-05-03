package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

@WebServlet("/api/target")
public class TargetController extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String no = req.getParameter("no");
		
		System.out.println("/api/target 요청확인");
		System.out.println("param no ==> "+ no);
		// 이 컨트롤러는 사용자 요청을 처리하기 위함이 아니다.
		// 프론트에서 들어온 요청을 처리하기 위한것이고, 목적은 데이터를
		// 스크립트 처리를 위한 데이터 요구하는 경우
		// 이런목적이라면 HTML을 전송하는게아니라
		
		Gson gson = new Gson();
		PrintWriter out = resp.getWriter();
		if(Math.random()>0.5) {
			//out.print("NNNNNN");
			Map r = Map.of("result", false);
			out.println(gson.toJson(r));
		}else {
			//out.print("NNNNNY");
			Map r = Map.of("result", true);
			out.println(gson.toJson(r));
		}
		
	}
}
