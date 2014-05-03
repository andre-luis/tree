class Node < ActiveRecord::Base

	MASC = 1
  FEM = 2

  belongs_to :gen_tree

	belongs_to :father, :class_name => "Node", :foreign_key => 'father_id'
	belongs_to :mother, :class_name => "Node", :foreign_key => 'mother_id'
    has_many :nodes, :foreign_key => "mother_id"
    has_many :nodes, :foreign_key => "father_id"

    validates :name, presence: true


end