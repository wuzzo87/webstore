namespace :db do
  desc "Fill database"
  task :populate => :environment do
    require 'populator'
    require 'faker'

    Product.populate 20 do |product|
      product.title = Faker::Company.bs
      product.description = Faker::Lorem.sentences
      product.price = rand(1000).to_f + ((rand(100).to_f)/100) 
      product.image_url = 'ring_1.jpg'
    end
  end
end