class AddNotaToProva < ActiveRecord::Migration[7.0]
  def change
    create_table :notas do |n|
      n.decimal :nota
      n.belongs_to :prova

      n.timestamps
    end
  end
end
