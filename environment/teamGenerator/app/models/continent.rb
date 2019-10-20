class Continent < ApplicationRecord

    validates :name, presence: true, length: { maximum: 255 }
    has_many :countries, dependent: :destroy
  
    def self.attr_accessible
      [
        :name
      ]
    end

end
