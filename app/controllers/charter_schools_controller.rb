class CharterSchoolsController < ApplicationController
    def index
      @charter_schools = CharterSchool.all
      render json: @charter_schools
    end
  end
  