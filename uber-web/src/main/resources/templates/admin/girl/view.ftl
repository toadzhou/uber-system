<div class="bjui-pageContent">
    <div class="form-group">
        <div class="col-lg-12">
            <label class="control-label">标题：</label>${bean.title!}
        </div>
    </div>
    <br/>
    <br/>
    <div class="form-group">
        <div class="col-lg-6">
            <label class="control-label">浏览数：</label>${bean.view_number!}
        </div>
        <div class="col-lg-6">
            <label class="control-label">回复数：</label>${bean.reply_number!}
        </div>
    </div>
    <br/>
    <br/>
    <div class="form-group">
        <div class="col-lg-12">
            <label class="control-label">图片：</label>
            <img src="${bean.image_url!}" width="200" height="200"/>
        </div>
    </div>

</div>
<div class="bjui-pageFooter">
    <ul>
        <li><button type="button" class="btn-close">取消</button></li>
    </ul>
</div>
