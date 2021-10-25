class Bookeditem < ApplicationRecord
    belongs_to :user, optional: true
    belongs_to :appointment, optional: true
end
