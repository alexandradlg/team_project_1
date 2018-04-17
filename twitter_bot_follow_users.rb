
require 'twitter'
require 'google_drive'

rows = worksheet.rows
# récupération des rows du cs
users_array = []
# array des recherches à faire sur twitter = maire de ville
rows.each { |row|
    users = row[2]
    users_array.push(users)
}

users_array.shift
print users_array
users_array.each { |user|
    user.to_s
    client.follow(user)
    puts user
}