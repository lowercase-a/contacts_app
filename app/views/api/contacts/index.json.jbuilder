json.array! @contacts.each do |contact|
  # json.partial! "contact.json.jbuilder", inside_variable: outside_variable
  json.partial! "contact.json.jbuilder", contact: contact
end
