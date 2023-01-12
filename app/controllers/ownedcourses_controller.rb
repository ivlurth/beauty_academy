class OwnedcoursesController < ApplicationController

    before_action :identify_user

    def create
        ownedcourse = Ownedcourse.create(ownedcourse_params) 
        course = Course.find(id = ownedcourse.course_id)
        redirect_to course_path(course)
    end

    def index
        @ownedcourses = Ownedcourse.where(user_id: current_user.id)
    end

    def identify_user
        if user_signed_in?
            return true
        else
            return false
        end
    end

    def new
        @course = Course.find(params[:id])
        @ownedcourse = Ownedcourse.new
    end

    def ownedcourse_params
        params.require(:ownedcourse).permit(:user_id, :course_id)
    end


end
