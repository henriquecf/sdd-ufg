class Teacher < ActiveRecord::Base
  validates :user, presence: true

  belongs_to :user
  has_many :klasses
  has_many :klass_intents
  has_many :intents, through: :klass_intents, foreign_key: :klass_id, class_name: "Klass"
  has_many :knowledge_levels
  has_many :knowledge_groups, through: :knowledge_levels

  def coordinator?
    false
  end
end
