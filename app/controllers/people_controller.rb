class PeopleController < ApplicationController

    def index
        @people = Person.all
    end
    
    def show
        @person = Person.find(params[:id])
    end
    
    def new
    end
    
    def create
        @person = Person.new(params.require(:person).permit(:name, :data))
        @person.save
        redirect_to @person
    end
    
end
