class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :nome
      t.string :cpf
      t.string :cep
      t.string :rua
      t.string :bairro
      t.string :numero
      t.string :complemento
      t.string :email
      t.string :telefone

      t.timestamps null: false
    end
  end
end
