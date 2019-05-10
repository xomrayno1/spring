package com.tampro.Service;

import java.util.List;

import com.tampro.Domain.Comment;

public interface CommentService {
	
	public  List<Comment> getAllCommentByIdBook(int id);
	
	public void addComment(Comment comment);
	
	public void deleteCommentById(int id);	
	

}
