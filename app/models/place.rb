class Place < ApplicationRecord
	belongs_to :my_company
	has_many :nodes
end
