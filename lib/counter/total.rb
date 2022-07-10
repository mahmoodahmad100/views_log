# frozen_string_literal: true

module Counter
  class Total < Interface
    def start
      hash = {}
      lines.each do |line|
        formated_line = line.split
        url = formated_line[0]

        hash[url] = { count: 0, ips: [] } unless hash.key? url
        hash[url][:count] += 1
      end

      hash
    end
  end
end
