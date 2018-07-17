require 'nokogiri'
require 'open-uri'

class Cloth < ActiveRecord::Base
    has_many :comments, dependent: :destroy
    has_many :reviews, dependent: :destroy
    mount_uploader :image1, ImgUploader
    mount_uploader :image2, ImgUploader
    mount_uploader :image3, ImgUploader
    # mount_uploader :image4, ImgUploader
   
  paginates_per 4
  validates_presence_of :name
  searchable do
    text :name
  end
  
  def self.search(search)
      search = "%#{search.downcase}%"    
        where("lower(name) LIKE ?", "%#{search}%") 
  end
  
  
end
