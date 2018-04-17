require 'gmail'
require 'rubygems'
require 'google_drive'
require 'csv'


def get_emails
email = ""
ville = ""

CSV.foreach('data2.csv') do |row|

    ville = "#{row[0]}"
    email = "#{row[2]}"
   
        gmail = Gmail.connect("apprendre.a.coder.gratuitement@gmail.com", "THPaze75")
        
        email = gmail.compose do
            to "email"
            subject "Apprendre à coder pour vos jeunes!"
            body  "Bonjour,
            nous sommes un groupe d éleves , nous sommes élèves à The Hacking Project, une formation au code gratuite, sans locaux, sans sélection, sans restriction géographique. La pédagogie de ntore école est celle du peer-learning, où nous travaillons par petits groupes sur des projets concrets qui font apprendre le code. Le projet du jour est d'envoyer (avec du codage) des emails aux mairies pour qu'ils nous aident à faire de The Hacking Project un nouveau format d'éducation pour tous.
            Déjà 300 personnes sont passées par The Hacking Project. Est-ce que la mairie de #{ville} veut changer le monde avec nous ?
            Charles, co-fondateur de The Hacking Project pourra répondre à toutes vos questions : 06.95.46.60.80."
        
        end
        email.deliver!
        
        gmail.logout

end
end

def perform
    get_emails
end

perform


