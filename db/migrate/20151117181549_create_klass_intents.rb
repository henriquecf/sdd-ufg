class CreateKlassIntents < ActiveRecord::Migration
  def change
    create_table :klass_intents do |t|
      t.belongs_to :klass, index: true, foreign_key: true
      t.belongs_to :teacher, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
