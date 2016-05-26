class Review < ActiveRecord::Base
	validates :rating, presence: true, format: {with: /\A[12345]\z/, message: "1-5 only"}
	validates :comment, presence: true, length: {maximum: 140}
end
