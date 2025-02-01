class DialogComponentPreview < Lookbook::Preview
  # @param dialog_type select { choices: ['info', 'success', 'warning', 'error'] }
  def switch(dialog_type: 'type')
    render DialogComponent.new(message: 'This is an info message.', type: dialog_type.to_sym)
  end

  def list
  end
end
