class FixUserName < ActiveRecord::Migration
  def change
  	change_table :users do |t|
		  t.rename :alias, :name
	end
  end
end
