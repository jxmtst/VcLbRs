class DialogComponentPreview < Lookbook::Preview
  # @param dialog_type select { choices: ['info', 'success', 'warning', 'error'] }
  def switch(dialog_type: 'type')
    render DialogComponent.new(message: 'This is an info message.', type: dialog_type.to_sym)
  end

  # @!group List

  def info
    render DialogComponent.new(message: 'This is an info message.', type: 'info')
  end

  def success
    render DialogComponent.new(message: 'This is an success message.', type: 'success')
  end

  def warning
    render DialogComponent.new(message: 'This is an warning message.', type: 'warning')
  end

  def error
    render DialogComponent.new(message: 'This is an error message.', type: 'error')
  end

  # @!endgroup
end
