class PostsController < ApplicationController
	def index
		@posts = Post.all
	end

	def new
		@post = Post.new
	end

	def create
		puts params
		@post = Post.new(params[:post].permit(:title, :picture))
		puts "*" * 1000
		puts @post.save
		redirect_to '/posts'
	end
end
