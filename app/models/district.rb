class District < ActiveRecord::Base
	has_many :locals
	has_many :users

	validates_presence_of :name
	validates_uniqueness_of :name, 
							:message => "Distrito ya existe"
	validates_format_of :name ,:with => /^[A-Za-z]/,
						:message => "Only allows text input"
end
