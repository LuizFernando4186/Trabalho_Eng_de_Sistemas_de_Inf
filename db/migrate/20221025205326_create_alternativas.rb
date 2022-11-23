class CreateAlternativas < ActiveRecord::Migration[7.0]
  def change
    create_table :alternativas do |t|
      t.text :alternativa
      t.boolean :correta
      t.references :questao, null: false, foreign_key: true

      t.timestamps
    end
  end
end
