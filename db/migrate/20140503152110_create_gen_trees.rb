class CreateGenTrees < ActiveRecord::Migration
  def change
    create_table :gen_trees do |t|
      t.integer :user_id

      t.timestamps
    end
  end
end
