class Writer < ApplicationRecord
 has_secure_password
 has_many :samples, dependent: :destroy

 validates :email, presence: true, uniqueness: true
end
