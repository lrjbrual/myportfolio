class FormsController < ApplicationController

  def new
    @form = Form.new
  end

  def create
    @form = Form.new(params[:form])
    @form.request = request
    if @form.deliver
      flash.now[:toastr] = " Materialize.toast('I am a toast!', 4000)"
      redirect_to pages_show_path
    else
      flash.now[:alert] = 'Cannot send message'
      render :new
    end
  end
end
