class CreateProfessores < ActiveRecord::Migration[7.0]
  def change
    create_table :professores do |t|
      t.string :nome
      t.string :email
      t.integer :nusp

      t.timestamps
    end
  end
end
