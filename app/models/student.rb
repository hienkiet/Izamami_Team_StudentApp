class Student < ApplicationRecord
    validates :first_name,:last_name, :email, :phone,:twitter,:address, presence: true
end
