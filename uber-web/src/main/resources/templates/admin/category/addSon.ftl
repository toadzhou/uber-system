<#assign base=request.contextPath />
<div class="bjui-pageContent">
    <form action="${base}/admin/category/saveSon" data-toggle="validate" enctype='multipart/form-data' method="post">
        <input type="hidden" name="parentId" value="${parentId!}"/>
        <div class="form-group">
            <label class="control-label x85">类目名称：</label>
            <input type="text" name="name" value="" placeholder="类目名称" size="20" data-rule="required"/>
        </div>
        <div class="form-group">
            <label class="control-label x85">类目图片：</label>
            <#--<a href="javascript:void(0)" class="btn btn-default bjui-upload-select"><i class="fa fa-cloud-upload">&nbsp;&nbsp;选择上传文件</i></a>-->
            <input type="file" name="imageFile"   placeholder="类目图片" size="20" data-rule="required"/>
        </div>
        <div class="form-group">
            <label class="control-label x85">排序值：</label>
            <input type="text" name="sort" value="" placeholder="排序值" size="20" data-rule="required"/>
        </div>
    </form>
</div>
<div class="bjui-pageFooter">
    <ul>
        <li><button type="button" class="btn-close">取消</button></li>
        <li><button type="submit" class="btn-default">添加</button></li>
    </ul>
</div>
