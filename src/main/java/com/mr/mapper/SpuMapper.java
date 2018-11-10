package com.mr.mapper;

import com.mr.model.TMallProduct;

import java.util.Map;

/**
 * Created by shangruijie on 2018/10/29.
 */
public interface SpuMapper {
    void saveSpu(TMallProduct spu);

    void saveSpuImgs(Map<String, Object> map);

}
