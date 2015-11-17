class CreateDistributionProcesses < ActiveRecord::Migration
  def change
    create_table :distribution_processes do |t|
      t.string :semester
      t.date :klass_registry_start
      t.date :teacher_intent_start
      t.date :first_resolution_start
      t.date :substitute_resolution_start
      t.date :conclusion

      t.timestamps null: false
    end
  end
end
