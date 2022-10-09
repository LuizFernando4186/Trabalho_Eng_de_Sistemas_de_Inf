class AlunoNome < ActiveRecord::Migration[7.0]
  def change
    rename_column :alunos, :name, :nome
  end
end
