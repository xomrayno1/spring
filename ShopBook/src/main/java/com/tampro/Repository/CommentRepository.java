package com.tampro.Repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.tampro.Domain.Comment;

@Repository
public interface CommentRepository  extends JpaRepository<Comment, Integer>{
	
	@Query("SELECT e FROM Comment e where e.book.id = ?1")
	public List<Comment> getAllCommentByIdBook(int id);

}
