class Challenge < ApplicationRecord
    
  validates :name, presence: true, length: { maximum: 255 }
  belongs_to :team
  belongs_to :challenge_type
  belongs_to :difficulty

  def self.attr_accessible
    [
      :name, :challenge_type_id, :team_id, :difficulty_id
    ]
  end

end
