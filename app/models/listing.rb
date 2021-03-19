class Listing < ApplicationRecord
    # belongs_to :user
    has_one_attached :image
    belongs_to :user

    before_save :remove_whitespace

    validates_presence_of :title
    validates_presence_of :description
    validates_presence_of :lost_date
    validates_presence_of :image

    validate :is_valid_datetime

    private
    
    def remove_whitespace
        self.title = self.title.strip
    end
      
    def is_valid_datetime
      if self.lost_date > Time.now
        errors.add(:lost_date, "must be a past date")
      elsif self.lost_date.strftime("%Y").to_i < 2000
        errors.add(:lost_date, "cannot be earlier than the year 2000")
      end
    #   self.lost_date.strftime("%Y").to_i < 2000 || self.lost_date.strftime("%Y").to_i > Time.year.now
    end
      
end
