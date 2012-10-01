class Product < ActiveRecord::Base
  attr_accessible :description, :price, :title, :category, :quantity,
                  :photos_attributes

  has_many :photos, :as => :attachable

  accepts_nested_attributes_for :photos

  validates_presence_of :title
  validates_uniqueness_of :title

  validate :photos_count_within_bounds, :on => :create
  before_save :ensure_primary_photo
  
  def primary_photo
    primary_photos = photos.find(:all, :conditions => {:primary => true})
#    if primary_photos.nil? || primary_photos.empty?
#      primary_photos = Array.new
#      primary_photos << photos.first
#    end
#    primary_photos
  end

  def secondary_photos
    photos.find(:all, :conditions => {:primary => false})
  end

  private

    def photos_count_within_bounds
      return if photos.blank?
      errors.add("Too many photos") if photos.length > 3
    end
    
    # Ensure there is always a primary photo. Pick first photo as default
    def ensure_primary_photo
      primary_photos = photos.find(:all, :conditions => {:primary => true})
      if primary_photos.nil? || primary_photos.empty?
        photos.first.primary = true
      end
    end
  
end

# == Schema Information
#
# Table name: products
#
#  id          :integer         not null, primary key
#  title       :string(255)
#  description :text
#  price       :decimal(8, 2)
#  created_at  :datetime        not null
#  updated_at  :datetime        not null
#  category    :string(255)
#  quantity    :integer
#

