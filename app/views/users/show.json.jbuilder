json.name @user.name
json.email @user.email

json.roles @user.roles do |role|
  json.name role.name
end
