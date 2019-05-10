package com.tampro.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.tampro.Domain.Banner;

@Repository
public interface BannerRepository extends JpaRepository<Banner, Integer> {

}
