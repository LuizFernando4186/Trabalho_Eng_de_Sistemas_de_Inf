FactoryBot.define do 
    factory :professor do
        nome { 'Marcos' }
        email { 'marcos@usp.br' }
        nusp { 10840300 }
    end
end

#assim e possivel usar o teste dessa forma: create(:professor) criando com esse conteudo passado, que e a forma resumida