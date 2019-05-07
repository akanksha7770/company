class Company < ApplicationRecord
	validates :name, presence: true,
                    length: { minimum: 5 }
    belongs_to :country
    belongs_to :state
    belongs_to :city
end
