package com.roncoo.recharge.util.jni;

import com.roncoo.recharge.util.ConfigUtil;

public class SdkConfig {

    public static final String FD_API = ConfigUtil.getProperty("fdAppId");
    public static final String FD_SDK_KEY = ConfigUtil.getProperty("fdSDKKey");
    public static final Integer FD_MAX_FACE_NUM = Integer.parseInt(ConfigUtil.getProperty("fdMaxFaceNum"));
    public static final Integer FD_MEM_SIZE = Integer.parseInt(ConfigUtil.getProperty("fdMemSize"));
    public static final Integer FD_NSCALE = Integer.parseInt(ConfigUtil.getProperty("fdNscanle"));
    public static final Integer FD_ORIENT_PRIORITY = Integer.parseInt(ConfigUtil.getProperty("fdOrientpriority"));
    public static final Integer FD_POOL_SIZE = Integer.parseInt(ConfigUtil.getProperty("fdPoolSize"));

}
