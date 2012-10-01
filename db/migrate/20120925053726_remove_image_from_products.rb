class RemoveImageFromProducts < ActiveRecord::Migration
  def up
    remove_column :products, :image
  end

  def down
  end
end
