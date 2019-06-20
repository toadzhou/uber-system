package com.roncoo.recharge.facade.service.impl;

import com.roncoo.recharge.common.dao.DspSystemLogDao;
import com.roncoo.recharge.common.entity.DspSystemLog;
import com.roncoo.recharge.facade.service.DspSystemLogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * 〈一句话功能简述〉<br>
 * Description:
 *
 * @author xierongli
 * @create 2019/6/20 15:23
 */
@Service
public class DspSystemLogServiceImpl implements DspSystemLogService {

    @Autowired
    private DspSystemLogDao dspSystemLogDao;

    @Override
    public int insert(DspSystemLog dspSystemLog) {
        return dspSystemLogDao.save(dspSystemLog);
    }
}
