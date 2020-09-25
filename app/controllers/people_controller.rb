class PeopleController < ApplicationController
  def index
    @people = Person.all
    render :index
  end

  def show
    @person = Person.find_by(identifier: params.fetch(:identifier))
    render :show
  end
end
