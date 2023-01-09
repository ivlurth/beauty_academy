class CoursesController < ApplicationController

    #before_filter :authenticate_user!, except => [:show, :index]
    #before_filter (current_user.role = 0), except => [:show, :index,]


    def index
        @course = Course.all
    end

    def show
        @course = Course.find(params[:id])
    end

    def create
        course = Course.create(course_params)          
        redirect_to course_path(course)
    end

    def update
        @course = Course.find(params[:id])
        @course.update(course_params)
        redirect_to course_path(@course)
    end

    def destroy
        @course = Course.find(params[:id])
        @course.destroy
        redirect_to courses_path
    end

    def new
        @course = Course.new
    end

    def edit
        @course = Course.find(params[:id])
    end

    def course_params
        params.require(:course).permit(:name, :description_short, :description_long, :price, :is_shown)
    end
end
