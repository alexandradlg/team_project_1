
require 'twitter'
require 'google_drive'
require 'dotenv'

Dotenv.load
session = GoogleDrive::Session.from_config("config.json")
@worksheet = session.spreadsheet_by_key("1AiQCScyKQt7rjXjAxKdzOqF0sycL2BZ4Fp4xOjtFD1g").worksheets[1]
# note, le fichier de scrap étant super long, on travaille sur un extrait dans l'onglet 2 pour faire tourner le script
# suffit de changer l'index de la worksheet pour changer d'onglet
def client

    client = Twitter::REST::Client.new do |config|
        config.consumer_key        = ENV['TWITTER_API_CONSUMER_KEY']
        config.consumer_secret     = ENV['TWITTER_API_CONSUMER_SECRET']
        config.access_token        = ENV['TWITTER_API_ACCESS_TOKEN']
        config.access_token_secret = ENV['TWITTER_API_ACCESS_TOKEN_SECRET']
      end
end


def find_user
    rows = @worksheet.rows
    # récupération des rows du spreadsheet
    search_array = []
    # création d'un array vide des recherches à faire sur twitter = maire de ville
    rows.each { |row|
        search = "Maire de #{row[0]}"
        search_array.push(search)
    }
    # pour chaque rows, on construit un string avec le prefixe maire de + le premier index du row ici la ville puis on le push dans l'array.
    @results = []
    #création d'un array vide pour stocker les résultats de la recherche (les noms des utilisateurs twitter)
    search_array.each { |ville|            
        @search = client.user_search(ville).take(1)
        if client.user_search(ville).empty? || client.user_search(ville).nil?
            @results.push("no_account_found")
            # ici = > aucun résultat lors de la recherche twitter, le maiire de la ville n'a pas twiter!
        else
            @search.each { |user|
                user_tweet = user.screen_name
                @results.push(user_tweet)
            }
        end
        
    }

    # on fait une recherche dans le champ utilisateur twitter pour chaque ville (on recherche maire de "ville") pour récupérer le premier uitlisateur qui ressort.
    # Peu de mairie ont des comptes twitter (0 résultats lors de la recherche maire de "ville"). 
    # On push "no_account_found" quand c'est le cas
    # pour chaque user récupéré (1 par recherche) on garde le screen name de l'utilisateur et on le push dans l'array.
    # On se retouve avec un array de nom d'utilisateur 
end

def update_spreadsheet
    @results.delete_at(0)
    # on supprime la première entre de l'array qui correspond au header
    @worksheet[1,4] = "twitter_handle"
    x = 2
    @results.each { |user|
        @worksheet[x,4] = user
        x +=1
        @worksheet.save
    }
    # on update la spreadsheet avec les usernames récupérés + un header twitter_handle
end

find_user
update_spreadsheet
