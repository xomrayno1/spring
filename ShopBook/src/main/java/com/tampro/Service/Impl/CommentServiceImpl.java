package com.tampro.Service.Impl;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tampro.Domain.Comment;
import com.tampro.Repository.CommentRepository;
import com.tampro.Service.CommentService;

@Service
@Transactional
public class CommentServiceImpl  implements CommentService{

	
	@Autowired
	CommentRepository commentRepository;
	@Override
	public List<Comment> getAllCommentByIdBook(int id) {
		// TODO Auto-generated method stub
		return commentRepository.getAllCommentByIdBook(id);
	}

	@Override
	public void addComment(Comment comment) {
		// TODO Auto-generated method stub
		commentRepository.save(comment);
	}

	@Override
	public void deleteCommentById(int id) {
		// TODO Auto-generated method stub
		
	}

}
