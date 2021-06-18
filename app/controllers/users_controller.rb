class UsersController < ApplicationController

    def index
        users = User.all
        render json: users, except: [:created_at, :updated_at]
    end

    def show
        user = User.find_by(id: params[:id])
        if user
            render json: user, except: [:created_at, :updated_at]
        else
            render json: { message: 'Username not found'}
        end
    end

    # def new
    #     user = User.new
    # end

    def create
        user = User.create(user_params)
        if (user.save)
            render json: user
        else
            render :error
        end
    end

    private
    def user_params
        params.permit(:username, :password, :score)
    end
    
end
