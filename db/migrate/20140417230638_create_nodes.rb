class CreateNodes < ActiveRecord::Migration
  def change
    create_table :nodes do |t|
      t.string :name
      t.string :surname
      t.integer :sex
      t.integer :id_father
      t.integer :id_mother
      t.integer :birth
      t.string :picture
      t.boolean :isMain

      t.timestamps
    end
  end
end
