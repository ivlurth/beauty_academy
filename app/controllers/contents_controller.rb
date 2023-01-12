class ContentsController < ApplicationController

    before_action :identify_user

    def identify_user
        if user_signed_in?
            return true
        else
            return false
        end
    end

    def show
        @content = Content.find(params[:id])
        
    end

    def create
        content = Content.create(content_params)          
        redirect_to course_path(content.course_id)
    end

    def update
        @content = Content.find(params[:id])
        @content.update(content_params)
        redirect_to content_path(@content)
    end

    def new
        @course = Course.find(params[:id])
        @content = Content.new
    end

    def edit
        @course = Course.find(params[:id])
        @content = Content.find(course_id = @course.id)
    end

    def content_params
        params.require(:content).permit(:course_id, :body)
    end
end
