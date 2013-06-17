class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :postal_code
      t.string :street
      t.string :number
      t.string :suburb
      t.string :town
      t.string :state
      t.string :country

      t.timestamps
    end
  end
end
