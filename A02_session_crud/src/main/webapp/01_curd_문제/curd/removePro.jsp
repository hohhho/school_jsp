<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<%
		int[] arr = (int[])session.getAttribute("arr");
		int index = (int)session.getAttribute("index");
		int targetIndex = Integer.parseInt(request.getParameter("targetIndex"));
		
		int k = 0;
		if(index > 0){
			for(int i = 0; i < index; i++){
				if(i != targetIndex){
					arr[k] = arr[i];
					k++;
				}
			}
		}
		
		index--;
		
		session.setAttribute("arr", arr);
		session.setAttribute("index", index);
		
		System.out.println("[메시지] 삭제를 완료하였습니다.");
		
		response.sendRedirect("list.jsp");
		
	%>
