<#assign base=request.contextPath /> 
<div class="pageContent">
    <div class="pageFormContent" layoutH="58">
        <p>
            <label>所属请求Id：</label>${bean.requestId}
        </p>
        <p>
            <label>所属乘客Id：</label>${bean.passengerId}
        </p>
        <p>
            <label>司机Id：</label>${bean.driverId}
        </p>
        <p>
            <label>所属车辆Id：</label>${bean.carId}
        </p>
        <p>
            <label>上车时间：</label>${bean.pickUpTime}
        </p>
        <p>
            <label>下车时间：</label>${bean.dropOfTime}
        </p>
        <p>
            <label>创建人：</label>${bean.createPerson}
        </p>
        <p>
            <label>创建时间：</label>${bean.createTime}
        </p>
        <p>
            <label>更新人：</label>${bean.updatePerson}
        </p>
        <p>
            <label>修改时间：</label>${bean.updateTime}
        </p>
    </div>
    <div class="formBar">
        <ul>
            <li><div class="button"><div class="buttonContent"><button type="button" class="close">取消</button></div></div></li>
        </ul>
    </div>
</div>
