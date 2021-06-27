require 'pry'
class SessionsController < ApplicationController

    # def new
    #     user = User.new
    # end

    def create
        user = User.find_by(:username => params[:session][:username])
        if user && user.authenticate(params[:session][:password])
            session[:user_id] = user.id
            render json: user
        else
            render json: {
                error: 'Invalid credentials.'
            }
        end
    end

    def destroy
        session.clear
        render json: {
            notice: 'You have logged out.'
        }
    end

end
