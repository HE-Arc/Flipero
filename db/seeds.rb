# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

articles = Article.create([{ name: 'BB-8™ App-Enabled Droid™ by Sphero',
                  description: 'We\'re going to bet you said the exact same thing as we did when you first saw BB-8™ in
                                the Star Wars: The Force Awakens previews. 1) How the heck are they doing that? 2) Where can
                                I get me one of those? Turns out, the answer to number two was always right here. Awww.
                                This is the Droid™ you\'re looking for. This 4.5" tall Droid is your app-enabled companion
                                to the world of Star Wars: The Force Awakens. You can use your phone to guide BB-8 using
                                your Bluetooth®-enabled device, make it respond to your voice commands, have it send virtual
                                holographic videos, or let it run on its own. Better yet, BB-8 has an adaptive personality,
                                which means it learns as you interact with it. What more could you want from a Droid?',
                  price: '39.00',
                  image: File.new(File.expand_path("../../public/seedingImages/ijgi_sphero_bb8.jpg", __FILE__))
                },
                { name: 'Pi Power Necktie',
                  description: 'A TOTALLY IRRATIONAL TIE

                                If you asked Sheldon to recite the first 100 digits of pi, he wouldn\'t. Not because he was unable,
                                rather because he believes 100 digits is an unacceptably small level of precision suitable
                                only for urban engineering and baked goods. He would, instead, direct you into his tie,
                                for the more-accurate, several-hundred digit version. But not before removing it because you\'d be
                                in his personal space bubble if you tried to read it while it was on his his person.

                                The ThinkGeek Pπ Power Tie adds the fun of mathematical constants to stodgy dress code requirements.
                                The subtle red-on-red jacquard design means only your most observant friends will benefit from your
                                intelligent humor. For everyone else? Too bad. They don\'t deserve your biting sartorial wit.

                                Product Specifications

                                The Pπ Power Tie
                                A ThinkGeek creation & exclusive!
                                Pi itself woven into the red jacquard fabric
                                Comes in a box suitable for gifting
                                Has keeper loop on back
                                Materials: 100% silk
                                Care Instructions: Dry clean only
                                Imported
                                Dimensions: 3 1/2" wide (at widest) x 59" long',
                  price: '9.00',
                  image: File.new(File.expand_path("../../public/seedingImages/1f64_pi_power_necktie.jpg", __FILE__))
                },
                           { name: 'meh. Mug',
                             description: 'APATHY IS HARD WORK.

Writing these amusing and pithy product descriptions you see on ThinkGeek.com is harder than it looks. Take our new \'meh\' mug, for example. Writing copy shouldn\'t be as hard as coding a first-person shooter in assembly, but sometimes indifference wins and creativity loses.

    In this case, we gave the writing job to our primary apparel merchant. The best she managed was to write "meh" on the back of a chinese delivery menu. The gadget merchant spent the day drawing doodles in it (after ordering Hunan Beef of course), consisting mostly of stick figures wielding swords. The computing merchant made the most progress: he wrote "mug." He handed the menu to the general manager. She misplaced it in the stacks of other food menus in the kitchen, so we had to start all over. It was then delegated to the customer service monkeys, but they became so unmotivated, they forgot to eat and regretfully expired. The graphic designer made a coffee stain on the menu and turned it into a drawing of a vampire cat, but that was no help at all. Finally, we locked ourselves in the conference room with a case of Bawls and the Office Space DVD for inspiration. Days went by and finally, a breakthrough. We now present to you the result of our toil. The culmination of our work:

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  Meh. It\'s a mug.

Product Specifications

Black mug with the word "meh." printed in white ink
A ThinkGeek exclusive!
Capacity: 16 oz.
Materials: Ceramic
Dimensions: 4" tall, 3 1/2" diameter
Love your mug: hand wash for longest art life',
                             price: '9.00',
                             image: File.new(File.expand_path("../../public/seedingImages/1644_meh_mug.jpg", __FILE__))
                           },
                           { name: 'Star Wars R2-D2 Carry-On Luggage',
                             description: 'THIS IS THE DROID YOU\'VE BEEN LOOKING FOR. CARRY ON..

The Stormtroopers chased Luke Skywalker and his astromech droid all over the spaceport. Luke and Artoo split up, which made the pursuit all the more difficult. A squad of Troopers found R2-D2 (or so they thought) outside a bathroom stall. When they went to apprehend the droid, the Star Wars R2-D2 Carry-On Luggage\'s owner (a very short-tempered Aqualish), forced the Stormtroopers out of the bathroom. In the confusion, Luke and the real Artoo escaped. All because of the Star Wars R2-D2 Carry-On Luggage. Want to know more? Read on!

The Star Wars R2-D2 Carry-On Luggage is the best carry-on bag you could ever hope for. As R2-D2 protected Luke, so will this Star Wars R2-D2 Carry-On Luggage protect your underwear, shirts, socks, toothbrush, and everything else you need on your travels. It\'s got a telescoping handle and 360° swivel wheels for quick maneuvering in any air, sea, or spaceport you happen to be travelling to (or from). Just make sure your Star Wars R2-D2 Carry-On Luggage leaves all his bartending stuff at home. Don\'t want you getting stopped in security!

Product Specifications

Perfect traveling companion for fans of Star Wars
                              Carry-on ease - fits in most overhead bins (be sure to check your particular airline\'s requirements before hitting the airport)
Aluminum, telescoping handle
Two zippers for ease of access during flights
Interior fully-lined with divider (with integrated pocket - 16" x 7")
Elastic straps to keep everything in place
Four, 360° wheels for upright rolling in multiple directions
Materials: ABS + PC (good impact and heat resistance), polyester lining
Officially-licensed Star Wars luggage
Dimensions:
Total linear inches: 45"
Shell: 14" x 20" x 8.5"
Including wheels and top handle: 14" x 22.5" x 8.5"
Inside: 19.5" x 13.5"
Weight: 5.5 lbs.',
                             price: '19.00',
                             image: File.new(File.expand_path("../../public/seedingImages/1e45_r2-d2_carrry_on_luggage.jpg", __FILE__))
                           }
                          ])

#a = articles.find(1)
#a.image_file_name =
#articles.find(2).image_file_name = File.open(File.expand_path("../../public/seedingImages/1f64_pi_power_necktie.jpg", __FILE__))
#a.save!

