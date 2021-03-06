<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
 
    <a href="${contextPath}">
        <img id="logo" src="img/site/mainlogo.jpg" class="logo">
    </a>
     
    <form action="foresearch" method="post" > 
        <div class="searchDiv">
            <input name="keyword" type="text" placeholder="闲置课本 体育用品">
            <button  type="submit" class="searchButton">搜索</button>
            <div class="searchBelow">
                <c:forEach items="${cs}" var="c" varStatus="st">
                    <c:if test="${st.count>=5 and st.count<=8}">
                        <span>
                            <a href="forecategory?cid=${c.id}">
                                ${c.name}
                            </a>
                            <c:if test="${st.count!=8 && !st.last}">              
                                <span>|</span>              
                            </c:if>
                        </span>           
                    </c:if>
                </c:forEach>      
            </div>
        </div>
    </form>   