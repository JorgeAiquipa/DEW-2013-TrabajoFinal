class Local < ActiveRecord::Base
  belongs_to :district
  has_many :tournaments

 	validates_presence_of :name, :address, :district
 	validates_uniqueness_of :name, :message => "Local already exists"
 	validates_numericality_of :phone, :on => :create
 	
 	
end
