class Klass < ActiveRecord::Base
  belongs_to :distribution_process
  belongs_to :teacher
  belongs_to :grade
  has_many :klass_schedules
  has_many :klass_intents
  has_many :teachers, through: :klass_intents

  validates :grade, :distribution_process, presence: true
  validates :grade_id, uniqueness: { scope: :distribution_process_id }

  rails_admin do
    [:teacher, :teachers, :klass_intents, :created_at, :updated_at].each do |field|
      configure field do
        hide
      end
    end
  end

  def name
    "#{grade.name} - #{distribution_process.semester if distribution_process}" if grade
  end
end
