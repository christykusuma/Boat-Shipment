class BoatsController < ApplicationController
	belongs_to :user
	has_many :assignments
	has_many :jobs, through: :assignments
end
