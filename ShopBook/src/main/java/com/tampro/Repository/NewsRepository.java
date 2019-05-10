package com.tampro.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.tampro.Domain.News;

@Repository
public interface NewsRepository  extends JpaRepository<News, Integer>{
	
	public News getNewsById(int id);
	
	@Query("SELECT e FROM News e where e.url = ?1")
	public News getNewsByUrl(String url);

	
}
