# frozen_string_literal: true

RSpec.describe Counter::Total do
    subject { described_class.new(lines).start() }

    let(:lines) {
        [
            "/home 184.123.665.067\n",
            "/help_page/1 126.318.035.038\n",
            "/contact 184.123.665.067\n",
            "/home 184.123.665.067\n",
            "/about/2 444.701.448.104",
            "/home 126.318.035.038\n"
        ]
     }

    hash = {
        "/about/2" => { :count => 1, :ips => [] },
        "/contact" => { :count => 1, :ips => [] },
        "/help_page/1" => { :count => 1, :ips => [] },
        "/home" => { :count => 3, :ips => [] }
    }

    it { is_expected.to eq(hash) }
end