package com.tampro.Service;

import java.util.List;

import com.tampro.Domain.Banner;

public interface BannerService {
	
	public void addBanner(Banner banner);
	
	public void updateBanner(Banner banner);
	
	public void deleteBannerById(int id);
	
	public List<Banner> getAllBanner();
	
	public Banner getBannerById(int id);

}
