Rails.application.configure do
  return unless Rails.env.local?

  config.view_component.preview_paths << "#{Rails.root}/spec/components/previews"
  config.lookbook.preview_layout = "lookbook"
end
