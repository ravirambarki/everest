class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  private 
  def is_correct_day
    @date = Time.now.to_date
    @day = @date.strftime("%^A")
    return ((@day == "MONDAY")||(@day == "TUESDAY"))
  end
end
