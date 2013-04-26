class CreateFlyers < ActiveRecord::Migration
  def change
    create_table :flyers do |t|
      t.string :name
      t.string :file_url
      t.boolean :active

      t.timestamps
    end
  end
end
