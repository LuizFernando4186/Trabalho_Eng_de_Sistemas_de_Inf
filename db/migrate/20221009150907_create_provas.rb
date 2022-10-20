class CreateProvas < ActiveRecord::Migration[7.0]
  def change
    create_table :provas do |t|
      t.string :disciplina
      t.integer :nusp

      t.timestamps
    end
  end
end
