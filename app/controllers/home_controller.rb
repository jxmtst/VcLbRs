class HomeController < ApplicationController
  def index
  end

  def show
    render DialogComponent.new(message:, type:)
  end

  private def type
    params["id"].to_sym
  end

  private def message
    case type
    when :success
      "This is an success message."
    when :warning
      "This is a warning message."
    when :error
      "This is an error message."
    else
      "This is a generic message."
    end
  end
end
