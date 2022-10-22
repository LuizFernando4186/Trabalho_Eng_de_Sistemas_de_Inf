class CreateProfessors < ActiveRecord::Migration[7.0]
  def change
    create_table :professors do |t|
      t.string :nome
      t.string :email
      t.integer :nusp, null: false

      t.timestamps
    end
  end
end
