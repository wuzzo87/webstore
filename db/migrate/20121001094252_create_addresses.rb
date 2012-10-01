class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.text :street
      t.text :suburb
      t.string :city
      t.string :postcode
      t.string :country
      t.references :addressable

      t.timestamps
    end
    add_index :addresses, :addressable_id
  end
end
