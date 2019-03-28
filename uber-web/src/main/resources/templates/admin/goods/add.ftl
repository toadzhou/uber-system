<#assign base=request.contextPath />
<div class="bjui-pageContent">
    <form action="${base}/admin/goods/save" data-toggle="validate" method="post">
        <div class="form-group">
            <label class="control-label x140">商品名称：</label>
            <input type="text" name="goodsName" value="" placeholder="商品名称" size="30" data-rule="required"/>
        </div>
        <div class="form-group">
            <label class="control-label x140">商品描述：</label>
            <textarea name="goodsDescription" style="width: 300px; height:80px;"></textarea>
        </div>

        <div class="form-group">
            <label class="control-label x140">类目选择：</label>
            <select name="category1Id" id="category1Id" data-width="100" onchange="categoryChange()" data-toggle="selectpicker"  class="show-tick" style="display: none;">
                <#if categoryList??>
                    <#list categoryList as enumvo>
                        <option value="${enumvo.id}">${enumvo.name}</option>
                    </#list>
                </#if>
            </select>
            <select name="category2Id" id="category2Id" data-width="100" data-toggle="selectpicker"  class="show-tick" style="display: none;">
                <#if secondCategoryList??>
                    <#list secondCategoryList as enumvo>
                        <option value="${enumvo.id}">${enumvo.name}</option>
                    </#list>
                </#if>
            </select>
        </div>

        <div class="form-group">
            <label class="control-label x140">选择品牌：</label>
            <select name="branId" data-toggle="selectpicker"  class="show-tick" style="display: none;" data-width="200">
                <#if brandList??>
                    <#list brandList as enumvo>
                         <option value="${enumvo.id}">${enumvo.name}</option>
                    </#list>
                </#if>
            </select>
        </div>

        <div class="form-group">
            <label class="control-label x140">商城价(元)：</label>
            <input type="text" name="price" value="" placeholder="商城价" size="30" data-rule="required"/>
        </div>
        <div class="form-group">
            <label class="control-label x140">是否启用规格：</label>
            <input type="radio" name="isEnableSpec" value="0"  checked/>不启用
            <input type="radio" name="isEnableSpec" value="1" />启用
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
function categoryChange(){
    var parentId = $("#category1Id").val();
    $("#category2Id option").remove();
    $("#category2Id").append("<option value=''>请选择</option>");
    $.ajax({
        type:"POST",
        url: "${base}/admin/goods/secondCategory?parentId="+parentId,
        success: function(data){
            var object = eval("("+data+")");
            var html="";
            for(var p in object){
                if(object[p].name == "remove" || object[p].name == "unique"
                    || object[p].name == "myIndexOf" || object[p].name == "toJson"){
                    continue;
                }
                html+="<option value='"+object[p].id+"'>"+object[p].name+"</option>";
            }
            $("#category2Id").html(html).selectpicker('refresh');
        }
    });
}


</script>
