package com.tampro.Service.Impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tampro.Domain.News;
import com.tampro.Repository.NewsRepository;
import com.tampro.Service.NewsService;

@Service
public class NewsServiceImpl  implements NewsService{
	
	@Autowired
	NewsRepository newsRepo;

	@Override
	public News getNewsByUrl(String url) {
		// TODO Auto-generated method stub
		return newsRepo.getNewsByUrl(url);
	}

	

}
