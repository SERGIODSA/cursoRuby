class Pin < ActiveRecord::Base
	validates :description, presence: true

	has_attached_file :image, style: {medium: "320x240>"}
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

	attr_accessible :user_id, :description, :image

	belongs_to :user
end
