module Bars
  class PopularityUpdateService
    def initialize(bar)
      @bar = bar
    end

    def call
      if drink_note_is_present? && zik_note_is_present?
        # Some hard and unexplicit popularity calculs
        avg = (@bar.drink_style.note + @bar.zik_style.note) / 2.0
        @bar.update_attribute(:popularity, avg)
      else
        @bar.update_attribute(:popularity, nil)
      end
    end

    private

    def drink_note_is_present?
      @bar.drink_style && @bar.drink_style.note
    end

    def zik_note_is_present?
      @bar.zik_style && @bar.zik_style.note
    end

  end
end
