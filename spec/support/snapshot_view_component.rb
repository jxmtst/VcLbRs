require 'view_component/test_helpers'
require 'view_component/system_test_helpers'

RSpec.configure do |config|
  config.include ViewComponent::TestHelpers, type: :component
  config.include ViewComponent::SystemTestHelpers, type: :component

  config.after(:each, :snapshot, type: :component) do |example|
    raise 'component snapshot has no content' if rendered_content.blank?

    klass = example.metadata[:described_class].name
    testing = example.metadata[:full_description].gsub(klass, '').strip.gsub(' ', '_')
    snapshot = '%s/%s' % [ klass.underscore, testing ]

    expect(rendered_content).to match_snapshot(snapshot)
  end
end
