class Teacher < ActiveRecord::Base
  validates :user, presence: true

  belongs_to :user
  has_many :klasses
  has_many :knowledge_levels
  has_many :knowledge_groups, through: :knowledge_levels

  def coordinator?
    false
  end
end
