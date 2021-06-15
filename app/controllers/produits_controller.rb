class ProduitsController < ApplicationController

   def show
   @produit = Produit.find(params[:id])
    end


    def new
        @produits = Produit.new
    end
    
    def create 
        @produit = Produit.new
        @produit = Produit.save
    end

end
