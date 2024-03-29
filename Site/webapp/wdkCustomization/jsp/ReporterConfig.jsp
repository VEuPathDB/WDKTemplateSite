<%@ taglib prefix="imp" tagdir="/WEB-INF/tags/imp" %>
<%@ taglib prefix="imp" tagdir="/WEB-INF/tags/imp" %>
<%@ taglib prefix="pg" uri="http://jsptags.com/tags/navigation/pager" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="html" uri="http://jakarta.apache.org/struts/tags-html" %>
<%@ taglib prefix="nested" uri="http://jakarta.apache.org/struts/tags-nested" %>

<!-- get wdkAnswer from requestScope -->
<jsp:useBean id="wdkUser" scope="session" type="org.gusdb.wdk.model.jspwrap.UserBean"/>
<c:set value="${requestScope.wdkAnswer}" var="wdkAnswer"/>
<c:set var="format" value="${requestScope.wdkReportFormat}"/>


<!-- display page header -->
<imp:header banner="Download Results" />

<table border="0" width="100%" cellpadding="1" cellspacing="0" bgcolor="white" class="thinTopBorders">
<tr><td bgcolor="white" valign="top">


<!-- display description for page -->
<p><b>Please select a format from the dropdown list to create the download report.</b></p>

<!-- display the parameters of the question, and the format selection form -->
<imp:reporter/>

<!-- handle empty result set situation -->
<c:if test='${wdkAnswer.resultSize == 0}'>
    No results for your query
</c:if>


<%-- CLOSE TABLE that sets the red line on top --%>
</td></tr></table>


<imp:footer/>
