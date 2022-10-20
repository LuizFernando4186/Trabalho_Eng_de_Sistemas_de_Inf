class Professore < ApplicationRecord
    validates :nome, :email, :nusp, presence: true
end
