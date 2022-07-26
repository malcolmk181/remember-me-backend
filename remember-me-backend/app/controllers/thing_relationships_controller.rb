class ThingRelationshipsController < ApplicationController
    def index
        render json: ThingRelationship.all
    end

    def show
        render json: ThingRelationship.find(params[:id])
    end

    def create
        thing_relationship = ThingRelationship.new(thing_relationship_params)
        if thing_relationship.save
            render json: thing_relationship
        else
            render json: thing_relationship.errors.full_messages, status: :unprocessable_entity
        end
    end

    def destroy
        ThingRelationship.find(params[:id]).destroy
    end

    private
    
    def thing_relationship_params
        params.require(:thing_relationship).permit(:parent_thing_id, :child_thing_id)
    end
end
