class Receta < ActiveRecord::Base

	belongs_to :user
	has_one :categoria

	attr_accessible :user_id, :nombre, :descipcion, :ingredientes
	validates :nombre, :descipcion, :ingredientes, :presence => true
end
