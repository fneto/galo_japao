class UsersController < ApplicationController
  def index
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    respond_to do |format|
      if @user.save
        format.html { redirect_to root_path, notice: 'Cadastro realizado com sucesso' }
      else
        format.html { render :new } 
      end
    end
  end

  private

  def user_params
    params.require(:user).permit(:nome, :email, :cpf, :telefone, :rua, :complemento, :bairro, :numero, :cep)
  end
end
