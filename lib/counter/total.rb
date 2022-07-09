# frozen_string_literal: true

module Counter
    class Total < Interface
        def start()
            hash = Hash.new
            lines.each do |line|
                x = line.split(' ')
                hash[x[0]] = { count: 0, ips: []} unless hash.has_key? x[0]
                hash[x[0]][:count] += 1
            end

            hash
        end
    end
end