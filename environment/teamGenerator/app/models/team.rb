class Team < ApplicationRecord

  validates :name, presence: true, length: { maximum: 255 }
  belongs_to :country
  belongs_to :competition
  has_many :challenges, dependent: :destroy

  def self.attr_accessible
    [
      :name, :country_id, :competition_id
    ]
  end

end
