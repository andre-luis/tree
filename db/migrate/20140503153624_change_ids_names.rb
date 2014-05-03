class ChangeIdsNames < ActiveRecord::Migration
  def change
    change_table :nodes do |t|
      t.rename :id_father, :father_id
      t.rename :id_mother, :mother_id
    end
  end
end
