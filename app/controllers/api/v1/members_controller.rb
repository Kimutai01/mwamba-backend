class  Api::V1::MembersController < ApplicationController
    skip_before_action :authorized

    def index
        @members = Member.all

        render json: @members
    end

    def show
        @member = Member.find(params[:id])

        render json: @member
    end

    def create
        @member = Member.create(member_params)

        render json: @member
    end

    def update

        @member = Member.find(params[:id])
        @member.update(member_params)

        render json: @member
    end


    def destroy
        @member = Member.find(params[:id])
        @member.destroy
        render json: @member

    end



    private
    def member_params
        params.require(:member).permit(:first_name, :last_name, :email, :phone_number, :date_of_birth , :county , :membership_category)
    end

end
