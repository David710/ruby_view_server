require 'erb'

x = 42
text = "quel plaisir d'etre ici ce soir"
text2 = " au moins on ne s'ennuie pas"
arr_var = ["lundi","mardi", "mercredi", "jeudi","vendredi", "samedi", "dimanche"]

template = ERB.new "The value of x is: <%= x %>"
template2 = ERB.new "voici mon texte: <%= text + text2 %>"
template3 = ERB.new "voici mon tableau de jours de la semaine: <%= arr_var.each {|day| day}%>"

puts template.result(binding)
puts template2.result(binding)
puts template3.result(binding)