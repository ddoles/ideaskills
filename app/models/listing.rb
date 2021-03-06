class Listing < ActiveRecord::Base
	acts_as_taggable

	if Rails.env.development?
		has_attached_file :image, :styles => { :medium => "200x", :thumb => "100x100>" }, :default_url => "imagesnotfound"
	else	
	has_attached_file :image, :styles => { :medium => "200x", :thumb => "100x100>" }, :default_url => "imagesnotfound", 
					:storage => :dropbox,
				    :dropbox_credentials => Rails.root.join("config/dropbox.yml"),
				    :path => ":style/:id_:filename"
	end
	validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
	validates :tag_list, :jobtitle, :description, :compensation, presence: true

	belongs_to :user
end
