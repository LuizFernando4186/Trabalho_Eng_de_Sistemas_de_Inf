class CreateAluno < ActiveRecord::Migration[7.0]
  def change
    create_table :alunos do |t|
      t.string :name
      t.string :email
      t.integer :nusp

      t.timestamps
    end
  end
end
