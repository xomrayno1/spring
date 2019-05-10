package com.tampro.Service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tampro.Domain.Banner;
import com.tampro.Repository.BannerRepository;
import com.tampro.Service.BannerService;

@Service
public class BannerServiceImpl  implements BannerService{
	
	@Autowired
	BannerRepository bannerRepository;

	@Override
	public void addBanner(Banner banner) {
		// TODO Auto-generated method stub
		bannerRepository.save(banner);
	}

	@Override
	public void updateBanner(Banner banner) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteBannerById(int id) {
		// TODO Auto-generated method stub
		Banner banner =bannerRepository.getOne(id);
		bannerRepository.delete(banner);
	}

	@Override
	public List<Banner> getAllBanner() {
		// TODO Auto-generated method stub
		return bannerRepository.findAll();
	}

	@Override
	public Banner getBannerById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

}
