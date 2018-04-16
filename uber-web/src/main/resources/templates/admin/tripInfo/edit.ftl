<#assign base=request.contextPath /> 
<div class="pageContent">
	<form action="${base}/admin/tripInfo/update" method="post" class="pageForm required-validate" onsubmit="return validateCallback(this, dialogAjaxDone);">
		<div class="pageFormContent" layoutH="58">
            <input type="hidden" name="id" value="${bean.id}"/>
    		<p>
                <label>所属请求Id：</label>
                <input type="text" name="requestId" value="${bean.requestId}" placeholder="所属请求Id" size="20" />
            </p>
    		<p>
                <label>所属乘客Id：</label>
                <input type="text" name="passengerId" value="${bean.passengerId}" placeholder="所属乘客Id" size="20" />
            </p>
    		<p>
                <label>司机Id：</label>
                <input type="text" name="driverId" value="${bean.driverId}" placeholder="司机Id" size="20" />
            </p>
    		<p>
                <label>所属车辆Id：</label>
                <input type="text" name="carId" value="${bean.carId}" placeholder="所属车辆Id" size="20" />
            </p>
    		<p>
                <label>上车时间：</label>
                <input type="text" name="pickUpTime" value="${bean.pickUpTime}" placeholder="上车时间" size="20" />
            </p>
    		<p>
                <label>下车时间：</label>
                <input type="text" name="dropOfTime" value="${bean.dropOfTime}" placeholder="下车时间" size="20" />
            </p>
    		<p>
                <label>创建人：</label>
                <input type="text" name="createPerson" value="${bean.createPerson}" placeholder="创建人" size="20" />
            </p>
    		<p>
                <label>创建时间：</label>
                <input type="text" name="createTime" value="${bean.createTime}" placeholder="创建时间" size="20" />
            </p>
    		<p>
                <label>更新人：</label>
                <input type="text" name="updatePerson" value="${bean.updatePerson}" placeholder="更新人" size="20" />
            </p>
    		<p>
                <label>修改时间：</label>
                <input type="text" name="updateTime" value="${bean.updateTime}" placeholder="修改时间" size="20" />
            </p>
        </div>
        <div class="formBar">
            <ul>
                <li><div class="buttonActive"><div class="buttonContent"><button type="submit">修改</button></div></div></li>
                <li><div class="button"><div class="buttonContent"><button type="button" class="close">取消</button></div></div></li>
            </ul>
        </div>
	</form>
</div>
