package com.animalConnect.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.animalConnect.domain.MapVO;
import com.animalConnect.domain.ProVO;
import com.animalConnect.domain.ProfileCriteria;
import com.animalConnect.mapper.NoticeMapper;
import com.animalConnect.mapper.ProMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service
@AllArgsConstructor
@Log4j
public class ProServiceImple implements ProService {

	private ProMapper pMapper;
	
	@Override
	public void proJoin(ProVO pro,String maps) {
		log.info("pro.proJoin()..... "+ pro);
		pMapper.proJoin(pro);
		String [] map = maps.split(",");
		MapVO mvo = new MapVO();
		mvo.setProEmail(pro.getProEmail());
		for(String item : map) {
			mvo.setProMaps(item);
			pMapper.proMapRegister(mvo);
		}
	}

	@Override
	public int checkProId(String id) {
		return pMapper.checkProId(id);
	}

	@Override
	public List<ProVO> proList(ProfileCriteria pCri) {
		List<ProVO > proList = pMapper.proList(pCri);
		
		proList.forEach(pro -> {pro.setProMaps(proMapString(pro.getProEmail()));
			});
		return proList;
	}

	@Override
	public String proMapString(String proEmail) {
		List<String> mapList = pMapper.proMapList(proEmail);
		String mapString = "";
		if(mapList!=null) {
			
			for(String map : mapList) {
				mapString+= map + ",";
			}
			if(mapString.lastIndexOf(",")<mapString.length()) {
				mapString = mapString.substring(0, mapString.lastIndexOf(","));
			}
			return mapString;
		}else {
			return null;
		}
	}

	@Override
	public int totalCnt() {
		return pMapper.totalCnt();
	}

}
