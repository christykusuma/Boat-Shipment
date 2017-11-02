class Boat < ApplicationRecord
	before_destroy :remove_foreign_key

	belongs_to :user
	has_many :assignments
	has_many :jobs, through: :assignments
	# validates :name, uniqueness:true

	def remove_foreign_key
		assignments.destroy_all
	end
end

