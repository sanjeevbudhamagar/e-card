<%--
  Created by IntelliJ IDEA.
  User: sanjeevbudha
  Date: 6/22/16
  Time: 4:47 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>e-Card</title>
    <link type="text/css" rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
</head>
<body>

<header class="container-fluid">
    <img src="/images/dwit_logo.png" title="e-Card">
    <ul style="list-style: none; float: right; padding-top: 4%; position: relative; margin-right: 2%;">
        <li><a href="/logout">Logout</a></li>
    </ul>
</header>

<nav class="navbar navbar-default" style="border: none;background-color: #E3E7EA;">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#menu">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
        </div>

        <div class="collapse navbar-collapse" id="menu">
            <ul class="nav navbar-nav">
                <li><a href="/login"><span class="glyphicon glyphicon-home"></span>Home</a></li>
            </ul>
            <ul class="nav navbar-nav pull-right">
                <li style="margin-top: 8%">Good Day! <% out.println(session.getAttribute("username"));%></li>
            </ul>
        </div>
    </div>
</nav>

<div style="width: 80%;margin: auto">

    <fieldset>
        <legend>Add Person Form</legend>

        <form role="form" method="post" action="/addPerson" enctype="multipart/form-data">

            <div class="form-group col-sm-6">
                <label class="control-label col-sm-4" for="firstName" style="text-align: left">First Name</label>
                <div class="col-sm-8">
                    <input type="text" class="form-control" id="firstName" name="firstName" placeholder="Enter First Name">
                </div>
            </div>
            <div class="form-group col-sm-6">
                <label class="control-label col-sm-4" for="lastName" style="text-align: left">Last Name</label>
                <div class="col-sm-8">
                    <input type="text" class="form-control" id="lastName" name="lastName" placeholder="Enter Last Name"/>
                </div>
            </div>

            <div class="form-group col-sm-6">
                <label class="control-label col-sm-4" for="city" style="text-align: left">City</label>
                <div class="col-sm-8">
                    <input type="text" class="form-control" id="city" name="city" placeholder="Enter City"/>
                </div>
            </div>

            <div class="form-group col-sm-6">
                <label class="control-label col-sm-4" for="district" style="text-align: left">District</label>
                <div class="col-sm-8">
                    <input type="text" class="form-control" id="district" name="district" placeholder="Enter District"/>
                </div>
            </div>

            <div class="form-group col-sm-6">
                <label class="control-label col-sm-4" for="district" style="text-align: left">Program</label>
                <div class="col-sm-8">
                    <input type="text" class="form-control" id="program" name="program" placeholder="Enter Program"/>
                </div>
            </div>

            <div class="form-group col-sm-6">
                <label class="control-label col-sm-4" for="validityDate" style="text-align: left">Validity Date</label>
                <div class="col-sm-8">
                    <input type="date" class="form-control" id="validityDate" name="validityDate" placeholder="Enter Validity Date"/>
                </div>
            </div>

            <div class="form-group col-sm-6">
                <label class="control-label col-sm-4" for="rollNumber" style="text-align: left">Roll Number</label>
                <div class="col-sm-8">
                    <input type="text" class="form-control" id="rollNumber" name="rollNumber" placeholder="Enter Roll Number"/>
                </div>
            </div>

            <div class="form-group col-sm-6">
                <label class="control-label col-sm-4" for="batch" style="text-align: left">Batch</label>
                <div class="col-sm-8">
                    <select name="batch" id="batch" class="form-control">
                        <option value="">--Select Batch</option>
                        <option value="2015">2015</option>
                        <option value="2016">2016</option>
                        <option value="2017">2017</option>
                        <option value="2018">2018</option>
                        <option value="2019">2019</option>
                    </select>
                </div>
            </div>
            <div class="form-group col-sm-6">
                <label class="control-label col-sm-4" for="image" style="text-align: left">Image</label>
                <div class="col-sm-8">
                    <input type="file" class="form-control" id="image" name="file"/>
                </div>
            </div>

            <div class="form-group col-sm-7">
                <button type="submit" class="btn btn-primary">create</button>
            </div>
        </form>
    </fieldset>
</div>


<nav class="navbar navbar-default navbar-fixed-bottom" style="border: none;background-color: #E3E7EA;">

    <p style="text-align: center;margin-top: 2%">@e-Card Generator 2016</p>
</nav>
</body>
</html>
