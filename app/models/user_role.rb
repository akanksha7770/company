class UserRole < ApplicationRecord
	validates :role_name, presence: true,
                    length: { minimum: 5 }
end
