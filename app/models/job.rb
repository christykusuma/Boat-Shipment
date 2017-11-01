class Job < ApplicationRecord
	has_many :assignments
	has_many :boats, through: :assignments
	validates :description, length: {minimum:50}
	validates :title, uniqueness:true
	validates :amount, numericality:true
end
