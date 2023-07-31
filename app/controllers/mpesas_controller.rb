class MpesasController < ApplicationController
    skip_before_action :authorized 

    def index
        mpesas = Mpesa.all
        render json: mpesas
    end

    def create 
        mpesa = Mpesa.create(mpesa_params)
        render json: mpesa
    end
    

    private 
    def mpesa_params
        params.require(:mpesa).permit(:Message, :Success, :Status, :Amount, :transaction_reference)
    end

end
