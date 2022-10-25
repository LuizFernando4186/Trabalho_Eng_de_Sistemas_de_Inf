class QuestaoFechada < ApplicationRecord

    has_many :alternativas

    validates :grupo_questao, presence: { message: "É obrigatório informar o grupo da questão!" }
    validates :titulo, presence: { message: "É obrigatório informar o título da questão!" }
    validates :enunciado, presence: { message: "É obrigatório informar o enunciado da questão!" }
    validates :total_alternativas, presence: { message: "É obrigatório informar o total de alternativas da questão!" }
    validates :alternativas_aluno, presence: { message: "É obrigatório informar o total de alternativas que o aluno deve marcar!" }
    validates :alternativas, presence: { message: "É obrigatório informar as alternativas da questão!" }
    validates :alternativa_correta, presence: { message: "É obrigatório informar a alternativa correta da questão!" }

end
