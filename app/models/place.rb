class Place < ActiveRecord::Base
	belongs_to :user
	geocoded_by :address
	after_validation :geocoded
	
	validates :name, :presence => true, :length => { :minimum => 3}
	validates :description, :presence => true
	validates :address, :presence => true
end
