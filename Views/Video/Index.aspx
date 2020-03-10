﻿<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Index</title>
  <meta charset="UTF-8">
  <meta name="description" content="ASP.NET MVC2 CRUD Video">
  <meta name="keywords" content="ASP.NET,MVC,FACPYA,Si">
  <meta name="author" content="PacoYee6661">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
    Hay  <%: ((System.Data.DataTable)ViewData["video"]).Rows.Count %>   videos
    <br />
    <%
        foreach (System.Data.DataRow ren in ((System.Data.DataTable)ViewData["video"]).Rows)
        { %>

        <p>    <%: ren ["titulo"].ToString() %>     </p>
        <iframe width="560" height="315" src="<%: ren["url"].ToString() %>"
        frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope;
        picture-in-picture" allowfullscreen></iframe>

     <% }
     %>
</body>
</html>
