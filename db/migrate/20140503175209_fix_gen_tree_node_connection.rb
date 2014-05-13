class FixGenTreeNodeConnection < ActiveRecord::Migration
  def change
    change_table :nodes do |t|
      t.rename :gen_trees_id, :gen_tree_id
    end
  end
end
