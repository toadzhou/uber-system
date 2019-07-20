<#assign base=request.contextPath />
<div class="bjui-pageContent">
    <form action="${base}/admin/pictureUnit/save" data-toggle="validate" enctype='multipart/form-data' method="post">
        <input type="hidden" name="parentId" value="${parentId!}"/>
        <div class="form-group">
            <label class="control-label x85">图片名称：</label>
            <input type="text" name="name" value="" placeholder="图片名称" size="20" data-rule="required"/>
        </div>
<#--        <div class="form-group">-->
<#--            <label class="control-label x85">上传图片：</label>-->
<#--            &lt;#&ndash;<a href="javascript:void(0)" class="btn btn-default bjui-upload-select"><i class="fa fa-cloud-upload">&nbsp;&nbsp;选择上传文件</i></a>&ndash;&gt;-->
<#--            <input type="file" name="imageFile"   placeholder="类目图片" size="20" data-rule="required"/>-->
<#--        </div>-->
        <div class="form-group">
            <label class="control-label x85">上传图片：</label>
            <div style="display:inline-block; vertical-align:middle;">
                <div id="doc_pic_up" data-toggle="upload" data-uploader="doc/form/ajaxPic"
                     data-file-size-limit="1024000000"
                     data-file-type-exts="*.jpg;*.png;*.gif;*.mpg"
                     data-multi="true"
                     data-on-upload-success="doc_upload_success"
                     data-icon="cloud-upload"></div>
                <input type="hidden" name="urlPath" value="" id="doc_pic">
            </div>
            <span id="doc_span_pic"></span>
        </div>
    </form>
</div>
<div class="bjui-pageFooter">
    <ul>
        <li><button type="button" class="btn-close">取消</button></li>
        <li><button type="submit" class="btn-default">添加</button></li>
    </ul>
</div>
<script type="text/javascript">
    function doc_upload_success(file, data) {
        var json = $.parseJSON(data)

        $(this).bjuiajax('ajaxDone', json)
        if (json[BJUI.keys.statusCode] == BJUI.statusCode.ok) {
            $('#doc_pic').val(json.filename)
            $('#doc_span_pic').html('已上传图片：<img src="'+ json.filename +'" width="100">')
        }
    }
</script>
