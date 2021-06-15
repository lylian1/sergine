class ProduitsController < ApplicationController

   def show
   @produit = Produit.find(params[:id])
    end


    def new
        @produits = Produit.new
    end
    
    def create 
        @produit = Produit.new(produit_params)
        @produit = Produit.save
    end

    private

    def produit_params
        params.require(:produit).permit(nom:, :description, :prix)

end
