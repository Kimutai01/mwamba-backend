class Api::V1::ResultsController < ApplicationController

    skip_before_action :authorized


    def index
        @results = Result.all

        render json: @results
    end

    def show
        @result = Result.find(params[:id])

        render json: @result
    end

    def create
        @result = Result.create(result_params)

        render json: @result
    end

    def update
        @result = Result.find(params[:id])
        @result.update(result_params)

        render json: @result
    end


    def destroy
        @result = Result.find(params[:id])
        @result.destroy
        render json: @result

    end

    private
    def result_params
        params.require(:result).permit(:season_status , :type_of_game , :date , :location ,:team_one_name , :team_one_image , :team_one_score , :team_two_name , :team_two_image , :team_two_score , :match_report)
    end






end
