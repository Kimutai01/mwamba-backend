class Api::V1::FixturesController < ApplicationController
    
        skip_before_action :authorized  


    def index
        @fixtures = Fixture.all

        render json: @fixtures
    end

    def show

        @fixture = Fixture.find(params[:id])

        render json: @fixture
    end

    def create
        @fixture = Fixture.create(fixture_params)

        render json: @fixture
    end

    def update
        @fixture = Fixture.find(params[:id])
        @fixture.update(fixture_params)

        render json: @fixture
    end

    def destroy
        @fixture = Fixture.find(params[:id])
        @fixture.destroy
        render json: @fixture

    end

    private
    def fixture_params
        params.require(:fixture).permit(:season_status , :type_of_game , :date , :location ,:team_one_name , :team_one_image ,  :team_two_name , :team_two_image )
    end

end
