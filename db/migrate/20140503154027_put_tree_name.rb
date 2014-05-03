class PutTreeName < ActiveRecord::Migration
  def change
      add_column :gen_trees, :name, :string
      add_reference :nodes, :gen_trees, index: true
  end
end
