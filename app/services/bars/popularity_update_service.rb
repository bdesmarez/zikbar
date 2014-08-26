module Bars
  class PopularityUpdateService
    def initialize(bar)
      @bar = bar
    end

    def call
      if @bar.drink_style.note && @bar.zik_style.note
        # Some hard and unexplicit popularity calculs
        arr = [@bar.drink_style.note, @bar.zik_style.note]
        arr.inject{ |sum, el| sum + el }.to_f / arr.size
      else
        nil
      end
    end
  end
end
