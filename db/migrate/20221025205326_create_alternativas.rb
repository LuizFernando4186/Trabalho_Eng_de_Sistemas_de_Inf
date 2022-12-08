class CreateAlternativas < ActiveRecord::Migration[7.0]
  def change
    create_table :alternativas do |t|
      t.text :alternativa
      t.boolean :correta
      t.belongs_to :questao_fechada

      t.timestamps
    end
  end
end
