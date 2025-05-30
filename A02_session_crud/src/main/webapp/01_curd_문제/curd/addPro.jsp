<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<%
		int[] arr = (int[])session.getAttribute("arr");
		int index = (int)session.getAttribute("index");
		
		int randomValue = Integer.parseInt(request.getParameter("randomValue"));
		
		if(index < 5){
			arr[index] = randomValue;
			index++;
			System.out.println("[메시지] 추가를 완료하였습니다.");
		}else{
			System.out.println("[메시지] 추가 실패 - arr배열 가득 참");
		}
		
		session.setAttribute("arr",arr);
		session.setAttribute("index", index);
		
		response.sendRedirect("list.jsp");
	%>
