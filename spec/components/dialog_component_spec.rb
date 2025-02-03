require "rails_helper"

RSpec.describe DialogComponent, type: :component do
  let(:message) { 'Hello, world!' }

  describe 'snapshot' do
    it('info', :snapshot) { render_inline(described_class.new(message:, type: :info)) }

    context 'success' do
      it('is', :snapshot) { render_inline(described_class.new(message:, type: :success)) }
    end

    context 'warning' do
      it('is', :snapshot) { render_inline(described_class.new(message:, type: :warning)) }
    end

    context 'error' do
      it('is', :snapshot) { render_inline(described_class.new(message:, type: :error)) }
    end
  end
end
