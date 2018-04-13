<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>司机上报系统位置信息</title>
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css"/>
    <link rel="stylesheet" href="http://g.alicdn.com/sui/sui3/0.0.18/css/sui.min.css">
    <script type="text/javascript" src="http://g.alicdn.com/sj/lib/jquery/dist/jquery.min.js"></script>
    <script type="text/javascript" src="http://g.alicdn.com/sui/sui3/0.0.18/js/sui.min.js"></script>
</head>
<body style="background: #F8F8F8; text-align: center;">
<div style="margin:200px auto; padding: 0px;max-width: 400px;  ">
    <form  id="loginForm" action="/test/driver_location" class="form-horizontal" method="post">
        <div class="form-group" style="text-align: center">
            <label for="userName" class="col-md-2 control-label"></label>
            <div class="col-md-10">
                <h3 style="text-align: center; width: 100%;">司机上报系统位置信息</h3>
            </div>
        </div>
        <div class="form-group">
            <label for="latitude" class="col-md-2 control-label">经度</label>
            <div class="col-md-10">
                <input type="text" name="latitude" class="form-control input-lg" />
            </div>
        </div>
        <div class="form-group">
            <label for="longitude" class="col-md-2 control-label">纬度</label>
            <div class="col-md-10">
                <input type="text" name="longitude" class="form-control input-lg"/>
            </div>
        </div>
        <div class="form-group">
            <label for="address" class="col-md-2 control-label ">地址</label>
            <div class="col-md-10">
                <input type="text" name="address" class="form-control input-lg" />
            </div>
        </div>
        <div class="form-group">
            <label for="address" class="col-md-2 control-label ">司机</label>
            <div class="col-md-10">
                <select name="driverId" class="form-control input-lg">
                    <option value="1" selected="selected">mark</option>
                </select>
            </div>
        </div>
        <div class="form-group">
            <div class="col-md-2"></div>
            <div class="col-md-10">
                <button type="submit"  class="btn btn-success btn-lg" style="width:100%">立即推送</button>
            </div>
        </div>
    </form>
</div>
</body>
</html>
