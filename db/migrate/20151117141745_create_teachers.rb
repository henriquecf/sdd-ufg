class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :name
      t.string :registry
      t.string :lattes_url
      t.date :entry_date
      t.string :formation
      t.integer :workload
      t.string :about
      t.string :rg
      t.string :cpf
      t.date :birth

      t.timestamps null: false
    end
  end
end
