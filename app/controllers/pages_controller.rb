class PagesController < ApplicationController

  def home
    render({:template => "pages_template/home"})
  end


end
