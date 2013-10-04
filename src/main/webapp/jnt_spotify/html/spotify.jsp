<%@ taglib prefix="jcr" uri="http://www.jahia.org/tags/jcr" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="utility" uri="http://www.jahia.org/tags/utilityLib" %>
<%@ taglib prefix="template" uri="http://www.jahia.org/tags/templateLib" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<jcr:nodeProperty node="${currentNode}" name="playList" var="playList"/>
<jcr:nodeProperty node="${currentNode}" name="trackList" var="trackList"/>

<c:if test="${renderContext.liveMode}">
	<template:module path="trackList"/>
	<template:module path="playList"/>    
</c:if>

<c:if test="${renderContext.editMode}">
	Spotify player: <br />
	<c:if test="${empty trackList && empty playList}">
		<template:module path="trackList"/>
		<template:module path="playList"/>    
	</c:if>
</c:if>