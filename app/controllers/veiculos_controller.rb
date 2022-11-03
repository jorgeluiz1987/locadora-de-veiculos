  class VeiculosController < ApplicationController
    def index
      @veiculos = Veiculo.all
    end
  
    def show
      @veiculo = Veiculo.find(params[:id])
    end
  
    def new
      @veiculo = Veiculo.new
    end
  
    def create
      @veiculo = Veiculo.new(veiculo_params)
  
      if @veiculo.save
        redirect_to @veiculo
      else
        render :new, status: :unprocessable_entity
      end
    end

    def edit
      @veiculo = Veiculo.find(params[:id])
    end
  
    def update
      @veiculo = Veiculo.find(params[:id])
  
      if @veiculo.update(veiculo_params)
        redirect_to @veiculo
      else
        render :edit, status: :unprocessable_entity
      end
    end

    def destroy
      @veiculo = Veiculo.find(params[:id])
      @veiculo.destroy
  
      redirect_to root_path, status: :see_other
    end

   private
      def veiculo_params
        params.require(:veiculo).permit(:placa, :modelo, :cor, :observacao)
      end
  end
    
    
   

   
  
    
  
   
  