package com.tampro.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.tampro.Domain.CartItem;

@Repository
@Transactional
public interface CartItemRepository extends JpaRepository<CartItem, Integer>{

}
