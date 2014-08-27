module Bars
  class SaveService
    def initialize(form, params)
      @form               = form
      @params             = params
      @popularity_service = Bars::PopularityUpdateService.new(form.model)
    end

    def call
      if @form.validate(@params[:bar]) && @form.save
        @popularity_service.call
        true
      else
        false
      end
    end
  end
end
