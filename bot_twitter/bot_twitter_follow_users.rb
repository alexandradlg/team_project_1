
require 'twitter'
require 'google_drive'
require 'dotenv'

Dotenv.load

session = GoogleDrive::Session.from_config("config.json")
@worksheet = session.spreadsheet_by_key("1AiQCScyKQt7rjXjAxKdzOqF0sycL2BZ4Fp4xOjtFD1g").worksheets[0]

def client

    client = Twitter::REST::Client.new do |config|
        config.consumer_key        = ENV['TWITTER_API_CONSUMER_KEY']
        config.consumer_secret     = ENV['TWITTER_API_CONSUMER_SECRET']
        config.access_token        = ENV['TWITTER_API_ACCESS_TOKEN']
        config.access_token_secret = ENV['TWITTER_API_ACCESS_TOKEN_SECRET']
      end
end


def find_twitter_user
    rows = @worksheet.rows
    # récupération des rows du spreadsheet, ils sont stockés dans l'array rows. On obtien un array de array.
    @users_array = []
    # création d'un array vide qui contiendra les noms d'utilisateur récupéré sur le spreadsheet
    rows.each { |row|
        users = row[3]
        @users_array.push(users)
    }
    # pour chaque élément du array rows, on garde l'index correspondant à la colonne twitter_handle puis ils sont pushé dans le users array
end

def follow_twitter_user
    @users_array.shift
    @users_array.each { |user|
        user.to_s
        client.follow(user)
    }
    # on follow chaque utilisateur contenu dans le user array.
end

find_twitter_user
follow_twitter_user
