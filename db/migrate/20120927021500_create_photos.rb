class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :file
      t.references :attachable
      t.boolean :primary, :default => false, :null => false
      t.timestamps
    end
    add_index :photos, :attachable_id
  end
end
