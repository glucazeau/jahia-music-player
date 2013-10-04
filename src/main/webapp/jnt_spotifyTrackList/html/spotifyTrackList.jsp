<%@ taglib prefix="jcr" uri="http://www.jahia.org/tags/jcr" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="utility" uri="http://www.jahia.org/tags/utilityLib" %>
<%@ taglib prefix="template" uri="http://www.jahia.org/tags/templateLib" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<jcr:nodeProperty node="${currentNode}" name="uri" var="uri"/>
<jcr:nodeProperty node="${currentNode}" name="view" var="view"/>
<jcr:nodeProperty node="${currentNode}" name="theme" var="theme"/>
<jcr:nodeProperty node="${currentNode}" name="width" var="width"/>
<jcr:nodeProperty node="${currentNode}" name="height" var="height"/>

<c:if test="${empty width.string}">
    <c:set var="width" value="300"/>
</c:if>
<c:if test="${empty height.string}">
    <c:set var="height" value="380"/>
</c:if>

<c:if test="${not empty uri.string}">
    <iframe src="https://embed.spotify.com/?uri=${currentNode.properties.uri.string}&theme=${theme.string}&view=${view.string}" width="${height.string}" height="${width.string}" frameborder="0" allowtransparency="true"></iframe>
</c:if>
<c:if test="${renderContext.editMode}">
	<template:module path="trackList"/>
	<template:module path="playList"/>    
</c:if>