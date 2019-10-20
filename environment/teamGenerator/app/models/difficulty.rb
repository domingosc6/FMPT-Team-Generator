class Difficulty < ApplicationRecord
    
  validates :name, presence: true, length: { maximum: 255 }
  has_many :challenges, dependent: :destroy

  def self.attr_accessible
    [
      :name
    ]
  end

end
