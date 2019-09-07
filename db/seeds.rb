menu = Context.new(name: "trololo")
menu.save

pic = {io: File.open('/home/gayking/Pictures/Screenshot from 2018-07-25 01-33-44.png'), filename: 'kek.txt'}
iimg = menu.images.new(name: "Kekekesdfdsaf", description: "fsdafs", picture: pic)
#img = menu.images.build(name: "Kekekesdfdsaf", description: "fsdafs", picture: pic)
img.save
menu2 = Context.new(name: "Roflan")
