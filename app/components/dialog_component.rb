# frozen_string_literal: true

class DialogComponent < ApplicationComponent
  def initialize(message:, type:)
    @message = message
    @type = type
  end

  def icon_class
    case @type
    when :success
      "fa-check-circle"
    when :warning
      "fa-exclamation-triangle"
    when :error
      "fa-times-circle"
    else
      "fa-info-circle"
    end
  end
end
