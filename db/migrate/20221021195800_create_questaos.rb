class CreateQuestaos < ActiveRecord::Migration[7.0]
  def change
    create_table :questaos do |t|
      t.string :grupo_questao # Precisa converter para Foreign Key
      t.string :tipo
      t.string :titulo
      t.text :enunciado
      t.integer :total_alternativas
      t.integer :alternativas_aluno
      t.text :alternativas, array: true, default: [].to_yaml
      t.integer :alternativa_correta

      t.timestamps
    end
  end
end
