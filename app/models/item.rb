class Item < ApplicationRecord
    has_one :picture
    default_scope { includes(:picture) }
    def with_picture
        { :item => self, :picture => self.picture }
    end
end
