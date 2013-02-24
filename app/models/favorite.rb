class Favorite < ActiveRecord::Base
 	belongs_to :user
  	belongs_to :receta
  
  	validates :user_id, :presence => true
  	validates :receta_id, :presence => true
end
