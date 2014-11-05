class Comment
	include Mongoid::Document

	field :author, type: String
	field :comment, type: String

	# each comment is embeded in a post
	embedded_in :post

end