package com.entity.view;

import com.entity.DiscusschongwudailiuEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 宠物代遛评论表
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2022-04-11 15:24:59
 */
@TableName("discusschongwudailiu")
public class DiscusschongwudailiuView  extends DiscusschongwudailiuEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public DiscusschongwudailiuView(){
	}
 
 	public DiscusschongwudailiuView(DiscusschongwudailiuEntity discusschongwudailiuEntity){
 	try {
			BeanUtils.copyProperties(this, discusschongwudailiuEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
