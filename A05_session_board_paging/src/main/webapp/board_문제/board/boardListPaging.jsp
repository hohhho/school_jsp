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
		int[] numList = (int[])session.getAttribute("numList");
		String[] writerList = (String[])session.getAttribute("writerList");
		String[] titleList = (String[])session.getAttribute("titleList");
		String[] contentsList = (String[])session.getAttribute("contentsList");
		int[] viewCountList = (int[])session.getAttribute("viewCountList");
		int lastIndex = (int)session.getAttribute("lastIndex");
		
		//-----------------------------------------------------------------------
		
		int currentPage = (int)session.getAttribute("currentPage");	// 현재 페이지 번호
		int vCount = (int)session.getAttribute("vCount");			// 한 화면에 보여지는 게시글 수
		int pagingButtonCount = (int)session.getAttribute("pagingButtonCount");	// 페이징 버튼 개수
		
		int startIndex = (currentPage - 1) * vCount;
		int endIndex = startIndex + vCount;
		if(endIndex >= lastIndex){
			endIndex = lastIndex;
		}
		
		System.out.print("게시글인덱스 : " + startIndex + " ");
		System.out.println(endIndex);
		
		//----------------------------------------------------------------------
		
	%>
	
	<%-- header --%>
	<jsp:include page="header.jsp"></jsp:include>
	
	<div align="center">
		<h2>전체 게시글 <%=lastIndex %>개</h2>
		
		<table border="1">
			<tr>
				<td align="center">번호</td>
				<td align="center">제목</td>
				<td align="center">작성자</td>
				<td align="center">조회수</td>
				<td align="center">삭제</td>
			</tr>
			
			<%for(int i=startIndex; i<endIndex; i++){ %>
			<tr>
				<td align="center"><%=numList[i] %></td>
				<td align="center">
					<a href="boardInfo.jsp?targetIndex=<%=i%>" style="text-decoration: none;"><%=titleList[i] %></a>
				</td>
				<td align="center"><%=writerList[i] %></td>
				<td align="center"><%=viewCountList[i] %></td>
				<td>
					<button onclick="window.location.href='deleteOneBoard.jsp?targetIndex=<%=i%>'">삭제하기</button>
				</td>
			<%} %>
		</table>
		
		<%
			int startButton = 0;
			int endButton = 0;
			int lastButton = 0;
			
			// 화면에 나타나는 페이징 버튼 중에서 시작 버튼의 숫자: startButton
			startButton = (currentPage - 1) / pagingButtonCount * pagingButtonCount;
			/*
				currentPage		startButton
					1			0 / 5 * 5 = 0
					2			1 / 5 * 5 = 0
					5			4 / 5 * 5 = 0
					6			5 / 5 * 5 = 5
				    11			10 / 5 * 5 = 10			
			*/
			endButton = startButton + pagingButtonCount;
			lastButton = lastIndex / vCount;
			if(lastIndex % vCount > 0){
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
			<button onclick="window.location.href='borderListPagingPro.jsp?nextPage=<%=startButton - 1%>'">이전</button>
		<%} %>
		
		<%for(int i=startButton; i<endButton; i++){ %>
			<button onclick="window.location.href='borderListPagingPro.jsp?nextPage=<%=i%>'"><%=i %></button>
		<%} %>
		
		<%if(endButton < lastButton){ %>
			<button onclick="window.location.href='borderListPagingPro.jsp?nextPage=<%=endButton + 1%>'">다음</button>
		<%} %>
		
		<br>
		<hr>
		<h3>테스트 버튼</h3>
		<%for(int i=1; i<=20; i++){ %>
			<button onclick="window.location.href='borderListPagingPro.jsp?nextPage=<%=i%>'"><%=i %></button>
		<%} %>
		
	</div>
	
</body>
</html>