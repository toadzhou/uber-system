<#assign base=request.contextPath />
<div class="pageContent">
	<form action="${base}/admin/projectInfo/save" method="post" class="pageForm required-validate" onsubmit="return validateCallback(this, dialogAjaxDone);">
        <div class="pageFormContent" layoutH="58">
    		<p>
                <label>所属公司ID：</label>
                <input type="text" name="companyId" value="" placeholder="所属公司ID" size="20" />
            </p>
    		<p>
                <label>开始日期：</label>
                <input type="text" name="startDate" value="" placeholder="开始日期" size="20" />
            </p>
    		<p>
                <label>结束日期：</label>
                <input type="text" name="endDate" value="" placeholder="结束日期" size="20" />
            </p>
    		<p>
                <label>对接人姓名：</label>
                <input type="text" name="masterName" value="" placeholder="对接人姓名" size="20" />
            </p>
    		<p>
                <label>对接人电话：</label>
                <input type="text" name="masterPhone" value="" placeholder="对接人电话" size="20" />
            </p>
    		<p>
                <label>房间数：</label>
                <input type="text" name="roomNumber" value="" placeholder="房间数" size="20" />
            </p>
    		<p>
                <label>公区数：</label>
                <input type="text" name="publicNumber" value="" placeholder="公区数" size="20" />
            </p>
    		<p>
                <label>创建人：</label>
                <input type="text" name="createPerson" value="" placeholder="创建人" size="20" />
            </p>
    		<p>
                <label>创建时间：</label>
                <input type="text" name="createTime" value="" placeholder="创建时间" size="20" />
            </p>
    		<p>
                <label>更新人：</label>
                <input type="text" name="updatePerson" value="" placeholder="更新人" size="20" />
            </p>
    		<p>
                <label>修改时间：</label>
                <input type="text" name="updateTime" value="" placeholder="修改时间" size="20" />
            </p>
        </div>
        <div class="formBar">
            <ul>
                <li><div class="buttonActive"><div class="buttonContent"><button type="submit">保存</button></div></div></li>
                <li><div class="button"><div class="buttonContent"><button type="button" class="close">取消</button></div></div></li>
            </ul>
        </div>
	</form>
</div>
