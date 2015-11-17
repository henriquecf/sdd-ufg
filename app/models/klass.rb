class Klass < ActiveRecord::Base
  belongs_to :distribution_process
  belongs_to :teacher
  belongs_to :grade
  has_many :klass_schedules
end
