<#assign base=request.contextPath />
<div class="bjui-pageContent">
    <form action="${base}/admin/brand/save" data-toggle="validate" method="post">
        <div class="form-group">
            <label class="control-label x85">品牌名称：</label>
            <input type="text" name="name" value="" placeholder="品牌名称" size="20" data-rule="required">
        </div>
        <div class="form-group">
            <label class="control-label x85">简写字母：</label>
            <input type="text" name="letter" value="" placeholder="简写字母" size="20" data-rule="required">
        </div>

    </form>
</div>
<div class="bjui-pageFooter">
    <ul>
        <li><button type="button" class="btn-close">取消</button></li>
        <li><button type="submit" class="btn-default">添加</button></li>
    </ul>
</div>
