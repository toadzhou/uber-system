<#assign base=request.contextPath /> 
<div class="pageContent">
    <div class="pageFormContent" layoutH="58">
        <p>
            <label>所属公司ID：</label>${bean.companyId}
        </p>
        <p>
            <label>开始日期：</label>${bean.startDate}
        </p>
        <p>
            <label>结束日期：</label>${bean.endDate}
        </p>
        <p>
            <label>对接人姓名：</label>${bean.masterName}
        </p>
        <p>
            <label>对接人电话：</label>${bean.masterPhone}
        </p>
        <p>
            <label>房间数：</label>${bean.roomNumber}
        </p>
        <p>
            <label>公区数：</label>${bean.publicNumber}
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
