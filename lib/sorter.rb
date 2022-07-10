# frozen_string_literal: true

class Sorter
    def initialize(hash, order_by = 'DESC')
        @hash = hash
        @order_by = order_by
    end

    def start
        @hash = hash.sort_by { |_,h| -h[:count] }

        if order_by == 'ASC'
            @hash = @hash.reverse
        end

        @hash
    end

    protected

    attr_reader :hash, :order_by
end