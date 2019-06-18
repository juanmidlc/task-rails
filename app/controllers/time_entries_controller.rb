class TimeEntriesController < ApplicationController

def index
    time_entry = TimeEntry.all
    render status: 200, json: time_entry
end

def show
    time_entry = TimeEntry.find(params[:id])
    render json: time_entry
end

def create
    time_entry = TimeEntry.new(time_entry_params)
    if time_entry.save
        render status: 201, json: time_entry
    else
        render staus: 422, json: { errors: time_entry.errors }
    end
end

def update
    time_entry = TimeEntry.find(params[:id])

    if time_entry.update(time_entry_params)
        render status: 200, json: time_entry
    else
        render status: 422, json: { errors: time_entry.errors }
    end
end

def destroy
    time_entry = TimeEntry.find(params[:id])
    time_entry.destroy
    head 204
end

protected
def time_entry_params
    params[:time_entry].permit(:trackable_type, :trackable_id, :elapsed_time, :starting_time, :ending_time)
end

end
