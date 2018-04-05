/**
 * Copyright 2015-现在 广州市领课网络科技有限公司
 */
package com.roncoo.recharge;


import com.xiaoleilu.hutool.geo.GeoHash;
import com.xiaoleilu.hutool.geo.Location;

/**
 * 添加Java代码中的注释
 */
public class Test {

	public static void main(String[] args) {
		double lat = 12.2121f;
		double lng = 32.3215f;
		String hashStr = GeoHash.geoHashStringWithCharacterPrecision(lat,lng,6);
		GeoHash.geoHashStringWithCharacterPrecision(121.366116,31.225679,8);

	}



}
