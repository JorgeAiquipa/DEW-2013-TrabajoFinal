class User < ActiveRecord::Base
  authenticates_with_sorcery!
  validates_confirmation_of :password, message: "Ambos campos deben coincidir", if: :password
  belongs_to :document_type
  belongs_to :district
end
