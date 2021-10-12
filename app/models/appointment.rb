class Appointment < ApplicationRecord
    has_many :bookeditem
    has_many :cartitem
end
