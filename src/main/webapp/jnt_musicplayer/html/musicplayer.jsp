<%@ taglib prefix="jcr" uri="http://www.jahia.org/tags/jcr" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="utility" uri="http://www.jahia.org/tags/utilityLib" %>
<%@ taglib prefix="template" uri="http://www.jahia.org/tags/templateLib" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

Jahia Music player
<c:forEach items="${currentNode.nodes}" var="provider">
    <c:if test="${jcr:isNodeType(provider,'jnt:spotify')}">
        <template:module node="${provider}" view="default"/>
    </c:if>
</c:forEach>
<c:if test="${renderContext.editMode}">
    <template:module path="*"/>
</c:if>