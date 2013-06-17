class CreateBranchFlyers < ActiveRecord::Migration
  def change
    create_table :branch_flyers do |t|
      t.integer :branch_id
      t.integer :flyer_id

      t.timestamps
    end
  end
end
