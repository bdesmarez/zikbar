class BarsController < ApplicationController
  expose(:bar)
  expose(:bars)
  expose(:bar_form) { BarForm.new(bar) }

  def create
    service = Bars::SaveService.new(bar_form, params)
    if service.call
      flash[:success] = "Yeah sa maman"
      redirect_to bars_path
    else
      flash[:error] = "Create raté"
      render :new
    end
  end

  def update
    service = Bars::SaveService.new(bar_form, params)
    if service.call
      flash[:success] = "Yeah sa maman"
      redirect_to bar_path(bar)
    else
      flash[:error] = "Update raté"
      render :edit
    end
  end
end
