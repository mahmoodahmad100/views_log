# frozen_string_literal: true

RSpec.describe Sorter do
    subject { described_class.new(hash).start() }

    let(:hash) {
        {
            "/about/2" => { :count => 1, :ips => [] },
            "/contact" => { :count => 2, :ips => [] },
            "/help_page/1" => { :count => 1, :ips => [] },
            "/home" => { :count => 3, :ips => [] }
        }
     }

    sorted_data = {
        "/home" => { :count => 3, :ips => [] },
        "/contact" => { :count => 2, :ips => [] },
        "/about/2" => { :count => 1, :ips => [] },
        "/help_page/1" => { :count => 1, :ips => [] }
    }.to_a
    
    it { is_expected.to eq(sorted_data) }
end