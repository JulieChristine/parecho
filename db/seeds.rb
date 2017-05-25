# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

class Shop < ActiveRecord::Base


shop_list = [
  ['G.O.D. Goods of Desire','Shop No. B16 & B17, 93 Queensway Admiralty, Hong Kong, Admiralty','Admirality','A hub for all things Hong Kong-themed, G.O.D. (Goods of Desire) dish up exactly what’s on the label  – desirable and unique goods that capture the essence and culture surrounding this city we call home! Filled with perfect presents for friends and family that perhaps live abroad, bring a little Hong Kong heritage home to your loved ones.','http://www.sassyhongkong.com/wp-content/uploads/2013/03/GOD.jpg','10.00 - 21.00','no coordinates','https://god.com.hk/'],
  ['Homeless','29 Gough Street, Central','Central','Homeless is a one-stop-shop for the ultimate cool housewarming gift! Everything you may ever need is all under one roof and you are sure to find something that no one owns or has ever seen before! Filled to the brim with funky furniture, cool lighting and plenty of unique knick-knacks to sprinkle around your home, it also boasts the exclusive Hong Kong distribution rights to many top international design brands.','https://img.shoplineapp.com/media/image_clips/5811ab1f61706957d7aa0700/xlarge.jpg?1477552927','12.00 - 21.30','no coordinates','https://www.homelessexpress.com/'],
  ['Eclectic Cool','5 Sun Street,Wan Chai, Hong Kong,','Wan Chai','Founder, designer and former That Mama Joanne Pereira is the creative brains behind this innovative design concept. The eye-catching store brings superbly cool art, homeware, furniture, rugs, stationery and jewels closer to your door and take our word for it – you will find the perfect gift for the person who literally has everything (and everyone knows one of those!). Joanne travels constantly around the globe sourcing quirky products and keeping ahead of design trends.','http://www.sassyhongkong.com/wp-content/uploads/2016/11/shk-gift-stores-electic-cool.jpg','11.00 - 17.00','no coordinates','https://www.eclectic-cool.com/'],
  ['Über Tunique','12, Gough Street, Central, Hong Kong','Central','Über Tunique is brimming with gorgeous beauty, home and jewellery collections that would make for a super special and evergreen gift – without the high price tag! Luxury can be affordable (hurray!) at this cute store, so pop over to an Über Tunique near you to browse delicate rings, statement necklaces and classy clutches.','http://www.sassyhongkong.com/wp-content/uploads/2016/11/shk-gift-stores-uber-tunique.jpg','11.00 - 20.00','no coordinates','www.tunique.com'],
  ['Visionaire','G/F, 26 Gough Street, Central, Hong Kong,','Central','Stocking “cool things in all categories from around the world”, we love Visionaire‘s huge selection of lifestyle, home and beauty products. Be sure to check out the cool jewellery and accessories here as well (including Typographic Tote Bags and ERA ORA’s printed scarves), which would make great gifts for any occasion.','http://www.sassyhongkong.com/wp-content/uploads/2016/11/shk-gift-stores-visionaire.jpg','11:30 – 20.30','no coordinates','http://www.visionaire.hk'],
  ['Kapok Wan Chai','5 st francis yardwanchai, hong kong','Wan Chai','Kapok began as a lifestyle shop located on a quiet backstreet of tin hau. our mission is to present a variety of fashion and lifestyle products sourced internationally, with a focus on quality and creativity.','http://www.ka-pok.com/webshop/media/storelocator/images/hk-sfy.jpg','11:30 – 20.30','no coordinates','http://www.ka-pok.com/webshop/'],
  ['Kapok Central','g/f, hollywood / hg10 -12 PMQ, 35 aberdeen street, central, hong kong','Central','Kapok began as a lifestyle shop located on a quiet backstreet of tin hau. our mission is to present a variety of fashion and lifestyle products sourced internationally, with a focus on quality and creativity.','http://www.ka-pok.com/webshop/media/storelocator/images/hk-pmq.jpg','11:30 – 20.30','no coordinates','http://www.ka-pok.com/webshop/'],
  ['Kapok TST','k11 art mall, shop 101, level 1, TST Hong Kong','TST','Kapok began as a lifestyle shop located on a quiet backstreet of tin hau. our mission is to present a variety of fashion and lifestyle products sourced internationally, with a focus on quality and creativity.','http://www.ka-pok.com/webshop/media/storelocator/images/hk-k11.jpg','11:30 – 21.30','no coordinates','http://www.ka-pok.com/webshop/']
]

shop_list.each do |name, address, area, description, picture, opening_hours, contact, website|
  Shop.create(name: name, address: address, area: area, description: description, picture: picture, opening_hours: opening_hours, contact: contact, website: website)
end
end

class Offer < ActiveRecord::Base



offer_list = [
  ['Bracelet','kapok10 verdon bracelet classic pink 18k gold','http://www.ka-pok.com/webshop/media/catalog/product/cache/1/thumbnail/80x80/9df78eab33525d08d6e5fb8d27136e95/f/i/fig8_18kgp_cs_pk-1.jpg','20%','2017-06-30', 6],
  ['Bag','Apolis sun street market bag','http://www.ka-pok.com/webshop/media/catalog/product/cache/1/small_image/252x/9df78eab33525d08d6e5fb8d27136e95/s/s/ss_tote.jpg','25%','2017-06-30', 6],
  ['Sunglasses','Etnia Barcelona soder sunglasses brown','http://www.ka-pok.com/webshop/media/catalog/product/cache/1/small_image/252x/9df78eab33525d08d6e5fb8d27136e95/4/_/4_soder_sun_br-1.jpg','HK$ 250 off ','2017-06-30', 6],
  ['Coaster set','Vintage hotels coaster set ','https://cdn.shopify.com/s/files/1/0738/6935/products/coaster_hotel_2_large.jpg?v=1430986991','10%','2017-12-31', 6],
  ['Tea infuser','Mini Teapot tea infuser','https://cdn.shopify.com/s/files/1/0738/6935/products/tea--g-4_grande_7ee9942d-6a92-428a-bf44-640e8bedd519_large.jpg?v=1490328553','buy 1 get 1','2017-12-31', 4],
  ['Scarf','Tree Sparrows silk scarf','https://cdn.shopify.com/s/files/1/0738/6935/products/1081083-0004_Silk_Scarf_-_Birds_90CM_X_180CM_100_silk_980_60G-1_1024x1024.jpg?v=1446546893','10%','2017-12-31', 4],
  ['Lamp','&Tradition utzon pendant JU1','https://cdn.shopify.com/s/files/1/0706/9381/products/lighting-tradition-utzon-pendant-ju1-1_large.jpeg?v=1448766677','15%','2017-12-31', 4],
  ['Stool','African Bamelike stool/side table 54cm','https://cdn.shopify.com/s/files/1/0706/9381/products/side-tables-african-bamelike-stool-side-table-54cm-1_large.jpeg?v=1448762023','20%','2017-12-31', 3],
  ['Jewelry organizer','Little Black dress jewelry organizer','https://img.shoplineapp.com/media/image_clips/58bd77a59a76f0875000267c/xlarge.jpg?1488811940','15%','2017-06-30', 3],
  ['Earrings','tatty devine pegasus drop earrings - iridescent','https://img.shoplineapp.com/media/image_clips/584a80ba61706903c7891400/xlarge.jpg?1481277625','15%','2017-06-30', 3],
  ['Shoes','Emma Go keira - green leather','https://cdn.shopify.com/s/files/1/0110/7072/products/DSCF2488_1050x@2x.progressive.JPG?v=1487818965','HK$ 250 off ','2017-06-30', 2],
  ['Shirt','Nach Bijoux Couple Leopard','https://cdn.shopify.com/s/files/1/0110/7072/products/500x0-2_1050x.progressive.jpg?v=1487754240','HK$ 250 off ','2017-06-30', 2],
  ['Wallet','Mamix - Ema Pouch XS','https://cdn.shopify.com/s/files/1/0110/7072/products/MMX01-3-view_1050x@2x.progressive.jpg?v=1494510224','10%','2017-06-30', 1],
  ['Diffuser','Aria 250ml','http://www.visionaire.hk/wp-content/uploads/cache/2017/05/DV250-02/1701641919.jpg','10%','2017-12-31', 1],
  ['Shopper','Today will be a Great Day - Natural Bag (Artists for AB)','http://www.visionaire.hk/wp-content/uploads/cache/2017/05/KCBLNB-GREATDAY/285996443.jpg','HK$ 50 off ','2017-12-31', 1]
]

offer_list.each do |name, description, picture, savings, validity, shop_id|
  Offer.create(name: name, description: description, picture: picture, savings: savings, validity: validity, shop_id: shop_id)
end
end
