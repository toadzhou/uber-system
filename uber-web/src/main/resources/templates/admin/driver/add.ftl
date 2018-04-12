<#assign base=request.contextPath />
<div class="bjui-pageContent">
	<form action="${base}/admin/driver/save" method="post" data-toggle="validate" method="post">
        <div class="form-group">
            <div class="form-group">
                <label class="control-label x85">姓名：</label>
                <input type="text" name="name" value="" placeholder="姓名" size="20" data-rule="required">
            </div>
        </div>
        <div class="form-group">
            <div class="form-group">
                <label class="control-label x85">手机号：</label>
                <input type="text" name="phone" value="" placeholder="手机号" size="20" data-rule="required">
            </div>
        </div>
        <div class="form-group">
            <div class="form-group">
                <label class="control-label x85">工作时长：</label>
                <input type="text" name="workingHours" value="" placeholder="工作时长" size="20" data-rule="required">
            </div>
        </div>
	</form>
</div>
<div class="bjui-pageFooter">
    <ul>
        <li><button type="button" class="btn-close">取消</button></li>
        <li><button type="submit" class="btn-default">添加</button></li>
    </ul>
</div>
