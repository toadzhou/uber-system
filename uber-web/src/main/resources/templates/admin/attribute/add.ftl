<#assign base=request.contextPath />
<div class="bjui-pageContent">
    <form action="${base}/admin/attribute/save" data-toggle="validate" method="post">
        <input type="hidden" name="categoryId" value="${categoryId!}"/>
        <div class="form-group">
            <label class="control-label x130">属性名称：</label>
            <input type="text" name="attrName" value="" placeholder="属性名称" size="20" data-rule="required"/>
        </div>
        <div class="form-group">
            <label class="control-label x130">能否进行检索：</label>
            <input type="radio" name="attrIndex" value="1"  size="20" checked />不需要检索&nbsp;
            <input type="radio" name="attrIndex" value="2"  size="20" />关键字检索&nbsp;
            <input type="radio" name="attrIndex" value="3"  size="20" />范围检索
        </div>
        <div class="form-group">
            <label class="control-label x130">相同属性是否关联：</label>
            <input type="radio" name="attrType" value="0"  size="20" checked/>不关联&nbsp;
            <input type="radio" name="attrType" value="1"  size="20" />关联
        </div>
        <div class="form-group">
            <label class="control-label x130">SKU属性：</label>
            <input type="radio" name="isLinked" value="0"  size="20" checked/>是&nbsp;
            <input type="radio" name="isLinked" value="1"  size="20" />否
        </div>
        <div class="form-group">
            <label class="control-label x130">该属性值的录入方式：</label>
            <input type="radio" name="attrInputType" value="0"  size="20" checked />手工录入&nbsp;
            <input type="radio" name="attrInputType" value="1"  size="20" />选项值录入&nbsp;
            <input type="radio" name="attrInputType" value="2"  size="20" />选项值录入
        </div>
        <div class="form-group">
            <label class="control-label x130">该属性值：</label>
            <textarea name="attrValues" style="width: 200px; height: 50px"></textarea>
        </div>
        <div class="form-group">
            <label class="control-label x130">排序值：</label>
            <input type="text" name="sortOrder" value="" placeholder="排序值" size="20" data-rule="required"/>
        </div>
    </form>
</div>
<div class="bjui-pageFooter">
    <ul>
        <li><button type="button" class="btn-close">取消</button></li>
        <li><button type="submit" class="btn-default">添加</button></li>
    </ul>
</div>
