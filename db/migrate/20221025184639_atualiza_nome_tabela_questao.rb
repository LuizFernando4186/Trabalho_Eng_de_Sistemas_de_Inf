class AtualizaNomeTabelaQuestao < ActiveRecord::Migration[7.0]
  def change
    rename_table :questaos, :questoes_fechadas
  end
end
