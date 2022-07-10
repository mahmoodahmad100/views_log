# frozen_string_literal: true

RSpec.describe Writer do
  let(:writer) { described_class.new(data, type) }

  let(:data) do
    {
      '/home' => { count: 3, ips: [] },
      '/contact' => { count: 2, ips: [] },
      '/about/2' => { count: 1, ips: [] },
      '/help_page/1' => { count: 1, ips: [] }
    }.to_a
  end

  context 'when type is total' do
    let(:type) { 'total' }

    let(:text) do
      <<~TEXT
        /home 3 visits
        /contact 2 visits
        /about/2 1 visit
        /help_page/1 1 visit
      TEXT
    end

    it { expect { writer.start }.to output(text).to_stdout }
  end

  context 'when type is unique' do
    let(:type) { 'unique' }

    let(:text) do
      <<~TEXT
        /home 3 unique visits
        /contact 2 unique visits
        /about/2 1 unique visit
        /help_page/1 1 unique visit
      TEXT
    end

    it { expect { writer.start }.to output(text).to_stdout }
  end
end
