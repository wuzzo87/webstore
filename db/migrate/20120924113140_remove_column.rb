class RemoveColumn < ActiveRecord::Migration
  def up
    remove_column :products, :image_url
  end

  def down
  end
end
