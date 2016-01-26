<%-- 
    Document   : dbsample
    Created on : Jan 26, 2016, 11:03:31 AM
    Author     : Len Payne <len.payne@lambtoncollege.ca>
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="dbsample.DBSample"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Database Sample Page</title>
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet" />
        <script src="https://code.jquery.com/jquery-2.2.0.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    </head>
    <body>
        <div class="container">
            <h1 class="col-md-12">Results</h1>
            <div class="col-md-8 col-md-offset-2">
                <%  String strId = request.getParameter("id");
                    if (strId != null && !strId.isEmpty()) {
                        try {
                            int id = Integer.parseInt(strId);
                            out.print(DBSample.getJSON(id));
                        } catch (NumberFormatException ex) {
                            out.print("Error with ID. " + strId + " is not a number.");
                        }
                    } else {
                        out.print(DBSample.getJSON());
                    }
                %>
            </div>
            <div class="form-group"><a class="btn btn-primary" href="#">Reload</a></div>
            <form method="GET" class="form" action="#">
                <div class="form-group">
                    <label>
                        Query By ID: <input class="form-control" name="id" />
                    </label>
                </div>
                <div class="form-group">
                    <input type="submit" class="btn btn-default" />
                </div>
            </form>                
        </div>
    </body>
</html>
