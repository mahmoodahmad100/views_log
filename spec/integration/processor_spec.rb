# frozen_string_literal: true

RSpec.describe Processor do
  let(:processor) { described_class.new(views_type, counter) }

  let(:lines) { Reader.new(File.join($ROOT_PATH, 'spec/fixtures/webserver.log')).start() }

  context 'when views type is total views' do
    let(:views_type) { 'total' }
    let(:counter) { Counter::Total.new(lines) }

    let(:text) do
      <<~TEXT
        /contact 4 visits
        /home 2 visits
        /help_page/1 1 visit
        /about/2 1 visit
      TEXT
    end

    it { expect { processor.start() }.to output(text).to_stdout }
  end

  context 'when views type is unique views' do
    let(:views_type) { 'unique' }
    let(:counter) { Counter::Unique.new(lines) }

    let(:text) do
      <<~TEXT
        /contact 2 unique visits
        /help_page/1 1 unique visit
        /home 1 unique visit
        /about/2 1 unique visit
      TEXT
    end

    it { expect { processor.start() }.to output(text).to_stdout }
  end
end
