puts 'Clearing the database...'

Actor.destroy_all
Character.destroy_all
Show.destroy_all
Network.destroy_all

puts "Database cleared!"

puts "Networks are a comin'..."

n1 = Network.create(call_letters: "ABC")
n2 = Network.create(call_letters: "Netflix")
n3 = Network.create(call_letters: "Disney Plus")

puts "Network wants us...they really want us.."

puts 'Negotiating Contracts with actors...'

a1 = Actor.create(first_name: "Brad", last_name: "Pitt")
a2 = Actor.create(first_name: "Jon", last_name: "Bernthal")
a3 = Actor.create(first_name: "Deborah", last_name: "Woll")
a4 = Actor.create(first_name: "Charlie", last_name: "Cox")
a5 = Actor.create(first_name: "Chadwick", last_name: "Boseman")

puts "Contracts signed! Actors ready for shooting!"

puts "Gathering writters to create screenplays..."

s1 = Show.create(name: "Punisher", network: n2)
s2 = Show.create(name: "Daredevil", network: n3)
s3 = Show.create(name: "Avengers", network: n1)

puts "Shows ready!"

puts "Getting actors ready for their roles..."

c1 = Character.create(name: "Frank Castle", actor_id: a2.id, show_id: s1.id, catchphrase: "Penny and dime.")
c2 = Character.create(name: "T'Challa", actor_id: a5.id, show_id: a3.id, catchphrase: "Wakanda Forever!")
c3 = Character.create(name: "Matt Murdock", actor_id: a4.id, show_id: a2.id, catchphrase: "I can't see")

puts "Show ready!"



