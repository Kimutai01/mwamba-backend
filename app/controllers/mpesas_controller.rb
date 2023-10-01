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


    def list_for_a_number
        mpesas = Mpesa.where(transaction_reference: params[:phone_number])
        render json: mpesas
    end

    def destroy
        mpesa = Mpesa.find(params[:id])
        mpesa.destroy
        render json: mpesa
    end
    

    private 
    def mpesa_params
        params.require(:mpesa).permit(:Message, :Success, :Status, :Amount, :transaction_reference)
    end

end
