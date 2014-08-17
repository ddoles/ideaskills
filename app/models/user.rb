class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

if Rails.env.development?
		has_attached_file :image, :styles => { :medium => "200x", :thumb => "100x100>" }, :default_url => "imagesnotfound"
   else	
   has_attached_file :image, :styles => { :medium => "200x", :thumb => "100x100>" }, :default_url => "imagesnotfound", 
					:storage => :dropbox,
				    :dropbox_credentials => Rails.root.join("config/dropbox.yml"),
				    :path => ":style/:id_:filename"
   end
   validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
   validates :name, presence: true

   has_many :listings, dependent: :destroy
end
