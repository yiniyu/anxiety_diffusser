class DiffusersController < ApplicationController
  def index
    @q = Diffuser.ransack(params[:q])
    @diffusers = @q.result(:distinct => true).page(params[:page]).per(10)

    render("diffuser_templates/index.html.erb")
  end

  def show
    @diffuser = Diffuser.find(params.fetch("id_to_display"))

    render("diffuser_templates/show.html.erb")
  end

  def new_form
    @diffuser = Diffuser.new

    render("diffuser_templates/new_form.html.erb")
  end

  def create_row
    @diffuser = Diffuser.new

    @diffuser.emotions_id = params.fetch("emotions_id")

    if @diffuser.valid?
      @diffuser.save

      redirect_back(:fallback_location => "/diffusers", :notice => "Diffuser created successfully.")
    else
      render("diffuser_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @diffuser = Diffuser.find(params.fetch("prefill_with_id"))

    render("diffuser_templates/edit_form.html.erb")
  end

  def update_row
    @diffuser = Diffuser.find(params.fetch("id_to_modify"))

    @diffuser.emotions_id = params.fetch("emotions_id")

    if @diffuser.valid?
      @diffuser.save

      redirect_to("/diffusers/#{@diffuser.id}", :notice => "Diffuser updated successfully.")
    else
      render("diffuser_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @diffuser = Diffuser.find(params.fetch("id_to_remove"))

    @diffuser.destroy

    redirect_to("/diffusers", :notice => "Diffuser deleted successfully.")
  end
end
