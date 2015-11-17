class AddReferenceToKlassSchedule < ActiveRecord::Migration
  def change
    add_reference :klass_schedules, :klass, index: true, foreign_key: true
  end
end
