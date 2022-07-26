class ThingsController < ApplicationController
    def index
        render json: Thing.all
    end

    def show
        render json: Thing.find(params[:id])
    end

    def create
        thing = Thing.new(thing_params)
        if thing.save
            render json: thing
        else
            render json: thing.errors.full_messages, status: :unprocessable_entity
        end
    end

    def update
        thing = Thing.find(params[:id])
        if thing.update(thing_params)
            render json: thing
        else
            render json: thing.errors.full_messages, status: :unprocessable_entity
        end
    end

    def destroy
        Thing.find(params[:id]).destroy
    end

    private

    def thing_params
        params.require(:thing).permit(:name, :content, :image_url, :url, :is_favorite)
    end
end
