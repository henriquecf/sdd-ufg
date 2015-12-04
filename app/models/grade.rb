class Grade < ActiveRecord::Base
  validates :name, presence: true, uniqueness: { scope: :course_id }
  validates :course, presence: true

  belongs_to :course
  has_many :klasses
  belongs_to :knowledge_group

  rails_admin do
    configure :klasses do
      hide
    end
  end
end
