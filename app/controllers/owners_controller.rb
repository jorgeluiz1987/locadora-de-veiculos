class OwnersController < ApplicationController
    def create
      @veiculo = Veiculo.find(params[:veiculo_id])
      @owner = @veiculo.owners.create(owner_params)
      redirect_to veiculo_path(@veiculo)
    end

    def destroy
        @veiculo = Veiculo.find(params[:veiculo_id])
        @owner = @veiculo.owners.find(params[:id])
        @owner.destroy
        redirect_to veiculo_path(@veiculo), status: :see_other
      end
    
      
  
    private
      def owner_params
        params.require(:owner).permit(:name, :cnh)
      end
  end
  
  
  
  
 
  
    