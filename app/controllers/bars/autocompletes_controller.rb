class Bars::AutocompletesController < ApplicationController

  def index
    render json: Bar.search(params[:name], fields: [{name: :text_start}], limit: 10).map { |bar| { name: bar.name } }
  end
end
