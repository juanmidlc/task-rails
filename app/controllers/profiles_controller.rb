class ProfilesController < ApplicationController

    def index
        profile = Profile.all
        render status: 200, json: profile
    end

    def show
        profile = Profile.find(params[:id])
        render json: profile
    end

    def create
        profile = Profile.new(profile_params)
        if profile.save
            render status: 201, json: profile
        else
            render status: 422, json: { errors: profile.errors }
        end
    end

    def update
        profile = Profile.find(params[:id])

        if profile.update(profile_params)
            render status: 200, json: profile
        else
            render status: 422, json: { errors: profile.errors }
        end
    end

    def destroy
        profile = Profile.find(params[:id])
        profile.destroy
        head 204
    end

    protected
    def profile_params
        params[:profile].permit(:name, :age, :occupation, :user, :password, :start_at, :finish_at, :points)
    end

































end
