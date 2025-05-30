<%@page import="java.util.ArrayList"%>
<%@page import="kiosk.MenuDAO"%>
<%@page import="kiosk.Menu"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	
	ArrayList<Menu> menuList = MenuDAO.instance.getMenuList();

%>
	<jsp:include page="kioskHeader.jsp"/>
 <div align="center">
        <h3>전체목록</h3>

        <table border="1">
			<tr align="center">	
                <td width="150px">번호</td>
				<td width="250px">이름</td>
                <td width="250px">가격</td>
				<td width="150px">재고수량</td>
                <td >증가</td>
                <td >감소</td>
                <td >수정</td>
                <td >삭제</td>
			</tr>	
        
        <% for(int i = 0; i < menuList.size(); i++) {%>
            <tr align="center">
                <td><%= menuList.get(i).getNumber()%></td>
                <td><%= menuList.get(i).getName() %> </td>
                <td><%= menuList.get(i).getPrice() %></td>
                <td><%= menuList.get(i).getCount() %></td>
                <td><button onclick="window.location.href='kioskAdminItemPlus.jsp?number=<%=menuList.get(i).getNumber()%>'">증가</button></td>
                <td><button onclick="window.location.href='kioskAdminItemMinus.jsp?number=<%=menuList.get(i).getNumber()%>'">감소</button></td>
                <td><button onclick="window.location.href='kioskAdminItemUpdateForm.jsp?number=<%=menuList.get(i).getNumber()%>'">수정</button></td>
                <td><button onclick="window.location.href='kioskAdminItemDeletePro.jsp?number=<%=menuList.get(i).getNumber()%>'">삭제</button></td>
            </tr>
        <%}%>
        </table>

       
    </div>
