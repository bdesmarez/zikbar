module Bars
  class SaveService
    def initialize(form, params)
      @form   = form
      @params = params
    end

    def call
      @form.validate(@params[:bar]) && @form.save
    end
  end
end
