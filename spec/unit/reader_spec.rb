# frozen_string_literal: true

RSpec.describe Reader do
    subject { described_class.new(file).start() }

    context 'when file is not valid' do
        let(:file) { File.join($ROOT_PATH, 'any_dir/no_file.log') }
    
        it { expect { subject }.to raise_error('The file provided dosn\'t exist.') }
    end

    context 'when file is valid' do
        let(:file) { File.join($ROOT_PATH, 'spec/fixtures/webserver.log') }

        lines = [
            '/help_page/1' => '126.318.035.038'
        ]

        lines = [
            "/help_page/1 126.318.035.038\n",
            "/contact 184.123.665.067\n",
            "/home 184.123.665.067\n",
            "/about/2 444.701.448.104"
        ]

        it { is_expected.to eq(lines) }
    end
end