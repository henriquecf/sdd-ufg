class Grade < ActiveRecord::Base
  validates :name, presence: true, uniqueness: { scope: :course_id }
  validates :course, presence: true

  belongs_to :course
  has_many :klasses
  belongs_to :knowledge_group

  rails_admin do
    [:id, :created_at, :updated_at, :klasses].each do |field|
      configure field do
        hide
      end
    end
  end
end
