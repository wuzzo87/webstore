class Address < ActiveRecord::Base
  belongs_to :addressable, :polymorphic => true
  attr_accessible :city, :country, :postcode, :street, :suburb, :state
end
# == Schema Information
#
# Table name: addresses
#
#  id               :integer         not null, primary key
#  street           :text
#  suburb           :text
#  city             :string(255)
#  postcode         :string(255)
#  country          :string(255)
#  addressable_id   :integer
#  created_at       :datetime        not null
#  updated_at       :datetime        not null
#  addressable_type :string(255)
#  state            :string(255)
#

