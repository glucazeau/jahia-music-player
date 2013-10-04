<%@ taglib prefix="jcr" uri="http://www.jahia.org/tags/jcr" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="utility" uri="http://www.jahia.org/tags/utilityLib" %>
<%@ taglib prefix="template" uri="http://www.jahia.org/tags/templateLib" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<jcr:nodeProperty node="${currentNode}" name="title" var="title"/>
<jcr:nodeProperty node="${currentNode.parent}" name="width" var="width"/>
<jcr:nodeProperty node="${currentNode.parent}" name="height" var="height"/>
<jcr:nodeProperty node="${currentNode.parent}" name="view" var="view"/>
<jcr:nodeProperty node="${currentNode.parent}" name="theme" var="theme"/>

<template:addCacheDependency node="${currentNode.parent}" />

<c:forEach items="${currentNode.properties.track}" var="track" varStatus="stat">
	<c:set var="tracks" value="${track.string} ${stat.last ? '' : ','}" />
</c:forEach>
<c:if test="${not empty tracks}">
<iframe src="https://embed.spotify.com/?uri=spotify:trackset:${title}:${tracks}&theme=${theme.string}&iew=${view.string}" width="${height.string}" height="${width.string}" frameborder="0" allowtransparency="true"></iframe>
</c:if>