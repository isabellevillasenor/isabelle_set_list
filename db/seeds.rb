Song.destroy_all
Artist.destroy_all


eb = Artist.create!(name: "Erykah Badu")
dm = Artist.create!(name: "Donny McCaslin")
izumi = Artist.create!(name: "Izumi Makura")
ld = Artist.create!(name: "Little Dragon")
sc = Artist.create!(name: "Scott Colley")
ys = Artist.create!(name: "Yasuaki Shimizu")

grn = eb.songs.create!(title: "Green Eyes", length: 738, play_count: 5683975)
window = eb.songs.create!(title: "Window Seat", length: 450, play_count: 24215689)

day = dm.songs.create!(title: "Losing Track of Daytime", length: 1005, play_count: 66831)
eyes = dm.songs.create!(title: "No Eyes", length: 555, play_count: 173845)


dandy = izumi.songs.create!(title: "知りたい", length: 340, play_count: 23964)
trash = izumi.songs.create!(title: "棄てるなどして", length: 252, play_count: 864271)


belong = ld.songs.create!(title: "Place To Belong", length: 311, play_count: 1984673)
twice = ld.songs.create!(title: "Twice", length: 306, play_count: 44980123)

fivetwo = sc.songs.create!(title: "Five-Two", length: 612, play_count: 5826)
time = sc.songs.create!(title: "Window of Time", length:755, play_count: 2025)

umi = ys.songs.create!(title: "Umi No Ue Kara", length: 818, play_count: 726247)
ka = ys.songs.create!(title: "Kakashi", length: 444, play_count: 1056284)