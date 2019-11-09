<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon" href="./images/icon.ico" type="image/x-icon">
            <title><tiles:insertAttribute name="title" ignore="true" /></title>
           
    </head>
    <body>
        <table border="0" cellpadding="0" cellspacing="0" align="center" width="100%" height="100%">
        <%-- TopHead --%>
        <tr>
                <td height="20px" valign="baseline" colspan="3" style="color: red;background-color: #BF0300;">
                    <tiles:insertAttribute name="tophead" />
                </td>
            </tr>
        <%-- Header --%>
            <tr>
                <td height="200px" valign="baseline" colspan="3" style="color: red;background-color: #8A0707;">
                    <tiles:insertAttribute name="header" />
                </td>
            </tr>
            
            <%-- Nav --%>
            
             <tr>
                <td height="65px" valign="top" colspan="20"style="background-color: #FDCE8E ;">
                    <tiles:insertAttribute name="nav" />
                </td>
             </tr>
                
                
                <%-- Left Menu --%>
              <tr>
                <td  width="225px" valign="top" style="background-color: #bf9543;">
                    <tiles:insertAttribute name="leftmenu" />
                </td>
           <%-- Body --%>
                <td  valign="top" >
                    <tiles:insertAttribute name="body" />
                </td>
           <%-- Right Menu --%>
                <td  width="225px" valign="top" style="background-color: #bf9543;">
                    <tiles:insertAttribute name="rightmenu" />
                </td>
            </tr>
            
            <%--Footer --%>
            <tr>
                <td  colspan="3">
                    <tiles:insertAttribute name="footer" />
                </td>
            </tr>
        </table>
    </body>
</html>
