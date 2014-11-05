class PostController < ApplicationController

	def index   
		# retrieves all posts from mongo database
		@posts = Post.all
	end

	def entry
		@post = Post.new
	end

	def entry_post
		# create new post using method defined below
		@post = Post.new(post_params)

		if @post.save
			redirect_to post_path
		else
			redirect to @post, notice: 'Sorry, your post was not able to load.'
		end
	end

	def post_params
		params.require(:post).permit(:camera, :title, :desc)
	end

	def one
		@post = Post.find(params[:post])
	end


end