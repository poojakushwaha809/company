class City < ApplicationRecord
	belongs_to :state
	has_many :my_companies
end
