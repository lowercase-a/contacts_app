class Api::ContactsController < ApplicationController
  def index
    @contacts = Contact.all
    render 'index.json.jbuilder'
  end

  def create
    @contact = Contact.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      phone_number: params[:phone_number],
      bio: params[:bio],
      middle_name: params[:middle_name],
      user_id: User.first.id
    )
    if @contact.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @contact.errors.full_messages}
    end
  end

  def show
    @contact = Contact.find(params[:id])
    render 'show.json.jbuilder'
  end

  def update
    @contact = Contact.find(params[:id])

    @contact.first_name = params[:first_name] || @contact.first_name
    @contact.last_name = params[:last_name] || @contact.last_name
    @contact.email = params[:email] || @contact.email
    @contact.phone_number = params[:phone_number] || @contact.phone_number
    @contact.bio = params[:bio] || @contact.bio
    @contact.middle_name = params[:middle_name] || @contact.middle_name
    @contact.user_id = User.first.id

    @contact.save!
    render 'show.json.jbuilder'
  end

  def destroy
    @contact = Contact.find(params[:id])
    @contact.destroy
    render json: {message: "Contact successfully destroyed!!"}
  end
end
