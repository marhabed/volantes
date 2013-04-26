class CreateBranches < ActiveRecord::Migration
  def change
    create_table :branches do |t|
      t.string :latitude
      t.string :longitude

      t.timestamps
    end
  end
end
