class Listing < ApplicationRecord
    # belongs_to :user
    has_one_attached :image

    before_save :remove_whitespace

    private
    
    def remove_whitespace
        self.title = self.title.strip
    end
end
