class Restaurant < ActiveRecord::Base
	mount_uploader :image, ImageUploader
	validates :name, length: {maximum: 30}, presence: true, uniqueness: true
	validates :address, length: {maximum: 40}, presence: true
	validates :phone, length: {maximum: 10}, presence: true, format: {with: /\A\d+\z/, message: "needs digits only"}
	has_many :reviews
end
