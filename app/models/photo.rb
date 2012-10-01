class Photo < ActiveRecord::Base
  belongs_to :attachable
  attr_accessible :file, :remote_file_url, :primary
  
  mount_uploader :file, ImageUploader
end
# == Schema Information
#
# Table name: photos
#
#  id              :integer         not null, primary key
#  file            :string(255)
#  attachable_id   :integer
#  primary         :boolean
#  created_at      :datetime        not null
#  updated_at      :datetime        not null
#  attachable_type :string(255)
#

