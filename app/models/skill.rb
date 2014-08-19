class Skill < ActiveRecord::Base

	validates :title, :description, :source, presence: true

	belongs_to :user
end
