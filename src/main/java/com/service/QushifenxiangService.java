package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.QushifenxiangEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.QushifenxiangVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.QushifenxiangView;


/**
 * 趣事分享
 *
 * @author 
 * @email 
 * @date 2022-04-11 15:24:59
 */
public interface QushifenxiangService extends IService<QushifenxiangEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<QushifenxiangVO> selectListVO(Wrapper<QushifenxiangEntity> wrapper);
   	
   	QushifenxiangVO selectVO(@Param("ew") Wrapper<QushifenxiangEntity> wrapper);
   	
   	List<QushifenxiangView> selectListView(Wrapper<QushifenxiangEntity> wrapper);
   	
   	QushifenxiangView selectView(@Param("ew") Wrapper<QushifenxiangEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<QushifenxiangEntity> wrapper);
   	

}

