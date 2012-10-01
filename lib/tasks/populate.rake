namespace :db do
  desc "Fill database"
  task :populate => :environment do
    require 'populator'
    require 'faker'

    Product.populate 10 do |product|
      product.title = Faker::Company.bs
      product.description = Faker::Lorem.sentences
      product.price = rand(1000).to_f + ((rand(100).to_f)/100)
      product.category = "Ring"
      product.image = ['products/ring_1.jpg', 'products/ring_2.jpg', 'products/ring_3.jpg',
        'products/ring_4.jpg'].sample
      product.quantity = rand(100)
    end

    Product.populate 10 do |product|
      product.title = Faker::Company.bs
      product.description = Faker::Lorem.sentences
      product.price = rand(1000).to_f + ((rand(100).to_f)/100)
      product.category = "Pendant"
      product.image = ['products/pendant_1.jpg', 'products/pendant_2.jpg', 'products/pendant_3.jpg',
        'products/pendant_4.jpg'].sample
      product.quantity = rand(100)
    end

    Product.populate 10 do |product|
      product.title = Faker::Company.bs
      product.description = Faker::Lorem.sentences
      product.price = rand(1000).to_f + ((rand(100).to_f)/100)
      product.category = "Earring"
      product.image = ['products/earring_1.jpg', 'images/products/earring_2.jpg', 'images/products/earring_3.jpg',
        'images/products/earring_4.jpg'].sample
      product.quantity = rand(100)
    end

    Product.populate 10 do |product|
      product.title = Faker::Company.bs
      product.description = Faker::Lorem.sentences
      product.price = rand(1000).to_f + ((rand(100).to_f)/100)
      product.category = "Necklace"
      product.image = ['images/products/necklace_1.jpg', 'images/products/necklace_2.jpg', 'images/products/necklace_3.jpg',
        'images/products/necklace_4.jpg'].sample
      product.quantity = rand(100)
    end

    Product.populate 10 do |product|
      product.title = Faker::Company.bs
      product.description = Faker::Lorem.sentences
      product.price = rand(1000).to_f + ((rand(100).to_f)/100)
      product.category = "Antique Jewellery"
      product.image = ['images/products/antique_1.jpg', 'images/products/antique_2.jpg', 'images/products/antique_3.jpg',
        'images/products/antique_4.jpg'].sample
      product.quantity = rand(100)
    end

    Product.populate 10 do |product|
      product.title = Faker::Company.bs
      product.description = Faker::Lorem.sentences
      product.price = rand(1000).to_f + ((rand(100).to_f)/100)
      product.category = "For Him"
      product.image = ['images/products/for_him_1.jpg', 'images/products/for_him_2.jpg', 'images/products/for_him_3.jpg',
        'images/products/for_him_4.jpg'].sample
      product.quantity = rand(100)
    end

    Product.populate 10 do |product|
      product.title = Faker::Company.bs
      product.description = Faker::Lorem.sentences
      product.price = rand(1000).to_f + ((rand(100).to_f)/100)
      product.category = "Miscellaneous"
      product.image = ['images/products/misc_1.jpg', 'images/products/misc_2.jpg', 'images/products/misc_3.jpg',
        'images/products/misc_4.jpg'].sample
      product.quantity = rand(100)
    end
  end
end