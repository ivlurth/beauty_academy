class WelcomeController < ApplicationController
  def index
  end

  def faq
  end

  def contacts
  end

  def formanager
    @courses = Course.all
  end
end
