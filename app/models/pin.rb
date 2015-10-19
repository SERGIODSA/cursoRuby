class Pin < ActiveRecord::Base
	validates :description, presence: true

	attr_accessible :user_id, :description

	belongs_to :user
end
