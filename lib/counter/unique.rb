# frozen_string_literal: true

module Counter
  class Unique < Interface
    def start
      hash = {}
      lines.each do |line|
        formated_line = line.split
        url = formated_line[0]
        ip = formated_line[1]

        hash[url] = { count: 0, ips: [] } unless hash.key? url
        unless hash[url][:ips].include? ip
          hash[url][:count] += 1
          hash[url][:ips] << ip
        end
      end

      hash
    end
  end
end
