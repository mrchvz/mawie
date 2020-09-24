class PeopleController < ApplicationController
  def index
    @people = Person.all
    render :index
  end

  def show
    @current_person = Person.find_by(identifier: params.fetch(:identifier))
  end
end
