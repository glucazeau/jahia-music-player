<%@ taglib prefix="jcr" uri="http://www.jahia.org/tags/jcr" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="utility" uri="http://www.jahia.org/tags/utilityLib" %>
<%@ taglib prefix="template" uri="http://www.jahia.org/tags/templateLib" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<jcr:nodeProperty node="${currentNode}" name="user" var="user"/>
<jcr:nodeProperty node="${currentNode}" name="playlist" var="playlist"/>
<jcr:nodeProperty node="${currentNode.parent}" name="width" var="width"/>
<jcr:nodeProperty node="${currentNode.parent}" name="height" var="height"/>
<jcr:nodeProperty node="${currentNode.parent}" name="view" var="view"/>
<jcr:nodeProperty node="${currentNode.parent}" name="theme" var="theme"/>

<template:addCacheDependency node="${currentNode.parent}" />

<c:if test="${empty width}">
    <c:set var="width" value="300"/>
</c:if>
<c:if test="${empty height}">
    <c:set var="height" value="380"/>
</c:if>

<c:if test="${not empty playlist.string}">
    <iframe src="https://embed.spotify.com/?uri=spotify:user:${user.string}:playlist:${playlist.string}" width="${height.string}" height="${width.string}" frameborder="0" allowtransparency="true"></iframe>
</c:if>