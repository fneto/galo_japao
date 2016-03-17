class User < ActiveRecord::Base
  validates_presence_of :nome, :cpf, :email, :telefone, :cep, :rua, :numero, :bairro
  validates_uniqueness_of :cpf, :email
end
