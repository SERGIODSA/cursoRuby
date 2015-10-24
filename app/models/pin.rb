class Pin < ActiveRecord::Base
	validates :description, presence: true

	has_attached_file :image, style: {medium: "320x240>"}
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

	attr_accessible :user_id, :description, :image, :image_remote_url

	belongs_to :user

	def image_remote_url=(url_value)
		self.image = URI.parse(url_value) unless url_value.blank?
		super
	end
end