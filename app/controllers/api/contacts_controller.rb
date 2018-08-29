class Api::ContactsController < ApplicationController
  def one_contact_action
    @contact = Contact.first
    render 'one_contact.json.jbuilder'
  end

  def many_contacts_action
    @contacts = Contact.all
    render 'many_contacts.json.jbuilder'
  end
end
