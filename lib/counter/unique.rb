# frozen_string_literal: true

module Counter
    class Unique < Interface
        def start()
            hash = Hash.new
            lines.each do |line|
                x = line.split(' ')
                hash[x[0]] = { count: 0, ips: []} unless hash.has_key? x[0]
                if (not hash[x[0]][:ips].include? x[1])
                  hash[x[0]][:count] += 1
                  hash[x[0]][:ips] << x[1]
                end
            end

            hash
        end
    end
end