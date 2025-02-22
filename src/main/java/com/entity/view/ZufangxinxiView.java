package com.entity.view;

import com.entity.ZufangxinxiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 租房信息
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2022-04-11 15:24:59
 */
@TableName("zufangxinxi")
public class ZufangxinxiView  extends ZufangxinxiEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public ZufangxinxiView(){
	}
 
 	public ZufangxinxiView(ZufangxinxiEntity zufangxinxiEntity){
 	try {
			BeanUtils.copyProperties(this, zufangxinxiEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
