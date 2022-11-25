class EspecializacaoQuestao < ActiveRecord::Migration[7.0]
  def change
    remove_column :questaos, :tipo
  end
end
