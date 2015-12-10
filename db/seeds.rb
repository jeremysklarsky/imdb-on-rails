# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# STRING = ['169. "The Puerto Rican Day Parade" (Season 9',
# '168. "The Outing" (Season 4',
# '167. "The Finale" (Season 9',
# '166. "The Jacket" (Season 2',
# '165. "The Tape" (Season 3',
# '164. "The Deal" (Season 2',
# '163. "The Chinese Woman" (Season 6',
# '162. "The Mango" (Season 5',
# '161. "The Muffin Tops" (Season 8',
# '160. "The Ex-Girlfriend" (Season 2',
# '159. "The Gum" (Season 7',
# '158. "Male Unbonding" (Season 1',
# '157. "The Strong Box" (Season 9',
# '156. "The Dog" (Season 3',
# '155. "The Stock Tip" (Season 1',
# '153. "The Robbery" (Season 1',
# '152. "The Parking Space" (Season 3',
# '151. "The Nose Job" (Season 3',
# '150. "The Suicide" (Season 3',
# '149. "The Postponement" (Season 7',
# '148. "The Checks" (Season 8',
# '147. "The Shoes" (Season 4',
# '146. "The Susie" (Season 8',
# '145. "The Keys" (Season 3',
# '144. "The Apartment" (Season 2',
# '143. "The Soup Nazi" (Season 7',
# '142. "The Smelly Car" (Season 4',
# '141. "The Visa" (Season 4',
# '140. "The Package" (Season 8',
# '139. "The Watch" (Season 4',
# '138. "The Wig Master" (Season 7',
# '137. "The Stakeout" (Season 1',
# '136. "The Big Salad" (Season 6',
# '135. "The Shower Head" (Season 7',
# '134. "The Truth" (Season 3',
# '133. "The Wait Out" (Season 7',
# '132. "The Ticket" (Season 4',
# '131. "The Wink" (Season 7',
# '130. "The Statue" (Season 2',
# '129. "The Junior Mint" (Season 4',
# '128. "The Bottle Deposit" (Season 7',
# '127. "The Strike" (Season 9',
# '126. "The Opera" (Season 4',
# '125. "The Soup" (Season 6',
# '124. "The Alternate Side" (Season 3',
# '123. "The Secretary" (Season 6',
# '122. "The Letter" (Season 3',
# '121. "The Pie" (Season 5',
# '120. "The Comeback" (Season 8',
# '119. "The Jimmy" (Season 6',
# '118. "The Switch" (Season 6',
# '117. "The Phone Message" (Season 2',
# '116. "The Good Samaritan" (Season 3',
# '115. "The Race" (Season 6',
# '114. "The Boyfriend" (Season 3',
# '113. "The Stand-In" (Season 5',
# '112. "The Pothole" (Season 8',
# '111. "The Parking Garage" (Season 3',
# '110. "The Doll" (Season 7',
# '109. "The Scofflaw" (Season 6',
# '108. "The Diplomat\'s Club" (Season 6',
# '107. "The Virgin" (Season 4',
# '106. "The Pitch" (Season 4',
# '105. "The Friar\'s Club" (Season 7',
# '104. "The Stranded" (Season 3',
# '103. "The Revenge" (Season 2',
# '102. "The Heart Attack" (Season 2',
# '101. "The Reverse Peephole" (Season 9',
# '100. "The Andrea Doria" (Season 8',
# '99. "The Hot Tub" (Season 7',
# '98. "The Cheever Letters" (Season 4',
# '97. "The Calzone" (Season 7',
# '96. "The Junk Mail" (Season 9',
# '95. "The Wife" (Season 5',
# '94. "The Sponge" (Season 7',
# '93. "The English Patient" (Season 8',
# '92. "The Yada Yada" (Season 8',
# '91. "The Busboy" (Season 2',
# '90. "The Pony Remark" (Season 2',
# '89. "The Pick" (Season 4',
# '88. "The Wallet" (Season 4',
# '87. "The Implant" (Season 4',
# '86. "The Puffy Shirt" (Season 5',
# '85. "The Chinese Restaurant" (Season 2',
# '84. "The Note" (Season 3',
# '83. "The Pilot" (Season 4',
# '82. "The Fatigues" (Season 8',
# '81. "The Understudy" (Season 6',
# '80. "The Sniffing Accountant" (Season 5',
# '79. "The Millennium" (Season 8',
# '78. The Dealership" (Season 9',
# '77. "The Serenity Now" (Season 9',
# '76. "The Pez Dispenser" (Season 3',
# '75. "The Frogger" (Season 9',
# '74. "The Little Jerry" (Season 8',
# '73. "The Handicap Spot" (Season 4',
# '72. "The Red Dot" (Season 3',
# '71. "The Apology" (Season 9',
# '70. "The Caddy" (Season 7',
# '69. "The Cartoon" (Season 9',
# '68. "The Blood" (Season 9',
# '67. "The Limo" (Season 3',
# '66. "The Pool Guy" (Season 7',
# '65. "The Cadillac" (Season 7',
# '64. "The Foundation" (Season 8',
# '63. "The Betrayal" (Season 9',
# '62. "The Money" (Season 8',
# '61. "The Marine Biologist" (Season 5',
# '60. "The Barber" (Season 5',
# '59. "The Beard" (Season 6',
# '58. "The Doorman" (Season 6',
# '57. "The Chicken Roaster" (Season 8',
# '56. "The Fix-Up" (Season 3',
# '55. "The Airport" (Season 4',
# '54. "The Van Buren Boys" (Season 8',
# '53. "The Kiss Hello" (Season 6',
# '52. "The Soul Mate" (Season 8',
# '51. "The Bookstore" (Season 9',
# '50. "The Maid" (Season 9',
# '49. "The Face-Painter" (Season 6',
# '48. "The Seven" (Season 7',
# '47. "The Butter Shave" (Season 9',
# '46. "The Library" (Season 3',
# '45. "The Cigar Store Indian" (Season 5',
# '44. "The Abstinence" (Season 8',
# '43. "The Nap" (Season 8',
# '42. "The Glasses" (Season 5',
# '41. "The Lip-Reader" (Season 5',
# '40. "The Wizard" (Season 9',
# '39. "The Trip" (Season 4',
# '38. "The Voice" (Season 9',
# '37. "The Movie" (Season 4',
# '36. "The Labelmaker" (Season 6',
# '35. "The Bris" (Season 5',
# '34. "The Stall" (Season 5',
# '33. "The Doodle" (Season 6',
# '32. "The Couch" (Season 6',
# '31. "The Non-Fat Yogurt" (Season 5',
# '30. "The Maestro" (Season 7',
# '29. "The Pledge Drive" (Season 6',
# '28. "The Burning" (Season 9',
# '27. "The Bizarro Jerry" (Season 8',
# '26. "The Raincoats" (Season 5',
# '25. "The Dinner Party" (Season 5',
# '24. "The Baby Shower" (Season 2',
# '23. "The Engagement" (Season 7',
# '22. "The Little Kicks" (Season 8',
# '21. "The Café" (Season 3',
# '20. "The Bubble Boy" (Season 4',
# '19. "The Gymnast" (Season 6',
# '18. "The Chaperone" (Season 6',
# '17. "The Slicer" (Season 9',
# '16. "The Invitations" (Season 9',
# '15. "The Mom & Pop Store" (Season 6',
# '14. "The Fusilli Jerry" (Season 6',
# '13. "The Masseuse" (Season 5',
# '12. "The Conversion" (Season 5',
# '11. "The Merv Griffin Show" (Season 9',
# '10. "The Secret Code" (Season 7',
# '9. "The Summer of George" (Season 8',
# '8. "The Old Man" (Season 4',
# '7. "The Rye" (Season 7',
# '6. "The Pen" (Season 3',
# '5. "The Hamptons" (Season 5',
# '4. "The Fire" (Season 5',
# '3. "The Opposite" (Season 5',
# '2. "The Subway" (Season 3',
# '1. "The Contest" (Season 4']

# STRING.each do |episode|
#   @title = episode.split('. ')[1].split(' (').first.gsub('"', "")
#   @ranking = episode.split(".").first.to_i
#   @season = Season.find_or_create_by(:number => episode.split(" (Season ").last.to_i)
#   @episode = Episode.new(:title => @title, :ranking => @ranking)
#   @season.episodes << @episode
#   @season.save
# end

SHOWS = [
  'Seinfeld',
  'Breaking Bad'
]

SHOWS.each do |show|
  Show.find_or_create_by(:name => show)
end