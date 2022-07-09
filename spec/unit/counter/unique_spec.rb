# frozen_string_literal: true

RSpec.describe Counter::Unique do
    subject { described_class.new(lines).start() }

    let(:lines) {
        [
            "/home 126.318.035.038\n",
            "/help_page/1 126.318.035.038\n",
            "/contact 184.123.665.067\n",
            "/home 184.123.665.067\n",
            "/about/2 444.701.448.104",
            "/home 126.318.035.038\n",
        ]
     }

    hash = {
        "/about/2" => { :count => 1, :ips => ["444.701.448.104"] },
        "/contact" => { :count => 1, :ips => ["184.123.665.067"] },
        "/help_page/1" => { :count => 1, :ips => ["126.318.035.038"] },
        "/home" => { :count => 2, :ips => ["126.318.035.038", "184.123.665.067"] }
    }

    it { is_expected.to eq(hash) }
end