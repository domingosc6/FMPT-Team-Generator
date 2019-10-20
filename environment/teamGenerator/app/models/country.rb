class Country < ApplicationRecord

    validates :name, presence: true, length: { maximum: 255 }
    belongs_to :continent
    has_many :teams, dependent: :destroy
    has_many :competitions, dependent: :destroy
  
    def self.attr_accessible
      [
        :name, :continent_id
      ]
    end

end
