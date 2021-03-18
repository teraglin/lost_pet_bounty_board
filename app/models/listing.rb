class Listing < ApplicationRecord
    # belongs_to :user
    has_one_attached :image
    belongs_to :user

    before_save :remove_whitespace

    validates_presence_of :title
    validates_presence_of :description
    validates_presence_of :lost_date
    validates_presence_of :image

    private
    
    def remove_whitespace
        self.title = self.title.strip
    end
end
