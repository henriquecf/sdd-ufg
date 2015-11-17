class CreateKlassSchedules < ActiveRecord::Migration
  def change
    create_table :klass_schedules do |t|
      t.integer :week_day
      t.time :starts_at
      t.time :finishs_at

      t.timestamps null: false
    end
  end
end
