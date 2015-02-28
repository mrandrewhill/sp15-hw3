class PagesController < ApplicationController
  def home
     @baz = Foobar.baz ["1", "2", "3", "3", "4", "5", "10", "11", "100"]
  end

  def stringify
    if params[:name].blank?
      @text = "You are nothing!"

    else
      @name = params[:name] 
      @adjective = params[:adjective]
      @text = @name + @adjective
    end 
  end

  def age
  end

  def person
    @nickname = Person.introduce
  end
end
