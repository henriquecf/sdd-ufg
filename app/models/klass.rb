class Klass < ActiveRecord::Base
  belongs_to :distribution_process
  belongs_to :teacher
  belongs_to :grade
  has_many :klass_schedules
  has_many :klass_intents
  has_many :teachers, through: :klass_intents
end
