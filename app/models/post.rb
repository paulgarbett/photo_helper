class Post
	# mixin capabilities
	include Mongoid::Document

	# fields for the mongo database
	field :camera , type: String
	field :title , type: String
	field :desc , type: String


end