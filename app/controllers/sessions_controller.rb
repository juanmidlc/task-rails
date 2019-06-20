class SessionsController < ApplicationController

    def index
        sessions = Session.all
        render status: 200, json: sessions
    end

    def show
        session = Session.find(params[:id])
        render json: session
    end 

    def create
        session = Session.new(session_params)
        if session.save
            render status: 201, json: session
        else
            render status: 422, json: { errors: session.errors }
        end
    end

    def update
        session = Session.find(params[:id])
        
        if session.update(session_params)
            render status: 200, json: session
        else
            render status: 422, json: { errors: session.errors}
        end
    end

    def destroy
        session = Session.find(params[:id])
        session.destroy
        head 204
    end

    protected
    def session_params
        params[:session].permit(:description, :start_at, :expires_at, :finished, :session_duration)
    end

end
