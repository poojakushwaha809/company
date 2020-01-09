class Country < ApplicationRecord
	has_many :states
	has_many :my_companies
end
