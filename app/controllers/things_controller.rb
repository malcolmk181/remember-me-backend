class ThingsController < ApplicationController
    def index
        render jsonapi: Thing.all
    end

    def show
        render jsonapi: Thing.find(params[:id]), include: [:child_things]
    end

    def create
        thing = Thing.new(thing_params)
        if thing.save
            render jsonapi: thing
        else
            render jsonapi_errors: thing.errors.full_messages
        end
    end

    def update
        thing = Thing.find(params[:id])
        if thing.update(thing_params)
            render jsonapi: thing
        else
            render jsonapi_errors: thing.errors.full_messages
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
