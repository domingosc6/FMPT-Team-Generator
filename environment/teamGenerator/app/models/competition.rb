class Competition < ApplicationRecord

    validates :name, presence: true, length: { maximum: 255 }
    belongs_to :country
    has_many :teams, dependent: :destroy
  
    def self.attr_accessible
      [
        :name, :country_id
      ]
    end

end
