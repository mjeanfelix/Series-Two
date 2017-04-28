class Writer < ApplicationRecord
 has_secure_password
 has_many :samples, dependent: :destroy

 # Verify that an email exists and that it does not already exist in the db
 validates :email, presence: true, uniqueness: true
end
