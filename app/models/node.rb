class Node < ActiveRecord::Base

	MASC = 1
    FEM = 2

	belongs_to :father, :class_name => "Node", :foreign_key => 'id_father'
	belongs_to :mother, :class_name => "Node", :foreign_key => 'id_mother'
    has_many :nodes, :foreign_key => "id_mother"
    has_many :nodes, :foreign_key => "id_father"

    validates :name, presence: true


end