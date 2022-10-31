class Student < ApplicationRecord
    validates :first_name, :last_name, :email, :address ,:program , presence: true
end
