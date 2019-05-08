class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
    validate :date_validation
	  def date_validation
	  	
	    if self[:end_date] < self[:start_date]
	     errors[:end_date] << "Should grater then Start_date"
	     return false
	   else
	     return true
	   end
	 end
end
