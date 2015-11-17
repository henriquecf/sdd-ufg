class CreateKlasses < ActiveRecord::Migration
  def change
    create_table :klasses do |t|
      t.integer :workload
      t.belongs_to :distribution_process, index: true, foreign_key: true
      t.belongs_to :teacher, index: true, foreign_key: true
      t.belongs_to :grade, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
