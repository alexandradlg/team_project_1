
require 'twitter'
require 'google_drive'

rows = worksheet.rows
# récupération des rows du cs
search_array = []
# array des recherches à faire sur twitter = maire de ville
rows.each { |row|
    search = "Maire de #{row[0]}"
    search_array.push(search)
}
# pour chaque rows, on construit un string avec le prefixe marie de + le premier index du row ici la ville

results = []
search_array.each { |ville|
    @search = client.user_search(ville).take(1)  
    @search.each { |user|
        user_tweet = user.screen_name
            results.push(user_tweet)
        }
}
results.delete_at(0)
worksheet[1,3] = "twitter_handle"
x = 2
results.each { |user|
    worksheet[x,3] = user
    x +=1
    worksheet.save
}
