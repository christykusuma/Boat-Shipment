class Job < ApplicationRecord
	has_many :assignments
	has_many :boats, through: :assignments
end
