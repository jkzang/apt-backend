jbuilder.users @users do |user|
  json.id user.id
  json.name user.name
  json.email user.email
  json.roles @user.roles do |role|
    json.name role.name
  end
end
