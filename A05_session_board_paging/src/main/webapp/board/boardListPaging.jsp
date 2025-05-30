<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		Object obj = session.getAttribute("count");
		int count = (int)obj;
		
		obj = session.getAttribute("noList");
		String[] noList = (String[])obj;
		
		obj = session.getAttribute("writerList");
		String[] writerList = (String[])obj;
		
	
		obj = session.getAttribute("subjectList");
		String[] subjectList = (String[])obj;
		
		obj = session.getAttribute("contentsList");
		String[] contentsList = (String[])obj;
		
		obj = session.getAttribute("readCountList");
		int[] readCountList = (int[])obj;


		//-----------------------------------------------------------
		
		obj = session.getAttribute("currentPage");
		int currentPage = (int)obj;
		
		obj = session.getAttribute("viewCount");
		int viewCount = (int)obj;
		
		obj = session.getAttribute("pagingButtonCount");
		int pagingButtonCount = (int)obj;
		
				
		int startIndex = (currentPage - 1) * viewCount;
		int endIndex = startIndex + viewCount;
		if(endIndex >= count){
			endIndex = count;
		}
		
		System.out.print("게시글인덱스 : " + startIndex + " ");
		System.out.println(endIndex);
		
		//----------------------------------------------------------			
				
	%>
	<jsp:include page="boardHeader.jsp"></jsp:include>
	
	<div align="center">
		<h1>전체게시글 <%= count %>개</h1>
		
		<table border="1">
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>조회수</th>
				<th>삭제</th>
			</tr>
		<%	for(int i=startIndex; i < endIndex; i++) {	%>
			<tr>
				<td><%= noList[i] %></td>		
				<td>
					<a href="boardInfo.jsp?index=<%= i %>"><%= subjectList[i] %></a>
				</td>		
				<td><%= writerList[i] %></td>	
				<td align="center"><%= readCountList[i] %></td>	
				<td>
					<button onclick="window.location.href='deleteBoardPro.jsp?index=<%= i %>'">삭제하기</button>
				</td>	
			</tr>
		<%	} %>
			
		</table>
			<%
			
			int startButton = 0;
			int endButton = 0;
			int lastButton = 0;
			/*
				1, 2, 3 => 1, 3
				4, 5, 6 => 4, 6
			*/
			/*
				 0 / 3 ==> 0 => 1
				 1 / 3 ==> 0 => 1
				 2 / 3 ==> 0 => 1
				 3 / 3 ==> 1 => 4
				 4 / 3 =>  1 => 4
				 5 / 3 ==> 1 => 4
			*/
			
			startButton = (currentPage - 1) / pagingButtonCount * pagingButtonCount; 	
			endButton = startButton + pagingButtonCount ;
			lastButton = count / viewCount;
			if(count % viewCount > 0){
				lastButton += 1;
			}
			if(endButton > lastButton){
				endButton = lastButton;
			}
			
			System.out.print("startButton : " + startButton + " ");
			System.out.print("endButton : " + endButton + " ");
			System.out.println("lastButton : " + lastButton + " ");
			
			startButton += 1;
			endButton += 1;
			lastButton += 1;
			
			%>
			<br>
			<%if(startButton > 1){ %>
					<button onclick="window.location.href='boardListPagingPro.jsp?nextPage=<%= startButton - 1%>'">이전</button>
			<%} %>
			
			<%for(int i = startButton; i < endButton; i++) {%>
				<button onclick="window.location.href='boardListPagingPro.jsp?nextPage=<%= i %>'"><%= i %></button>
			<%} %>
			
			<%if(endButton < lastButton){ %>
					<button onclick="window.location.href='boardListPagingPro.jsp?nextPage=<%= endButton%>'">이후</button>
			<%} %>
			
			<br>
			<h1>테스트 버튼</h1>
			<%for(int i = 1; i <= 20; i++) {%>
				<button onclick="window.location.href='boardListPagingPro.jsp?nextPage=<%= i%>'"><%= i%></button>
			<%} %>
	</div>
		
</body>
</html>