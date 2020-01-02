# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

a1 = Author.create(name: "Tara Westover", 
    profile: "Tara Westover (born September 27-29 1986)[1] is an American memoirist, essayist and historian. Her memoir Educated (2018) debuted at #1 on The New York Times bestseller list and was a finalist for a number of national awards, including the LA Times Book Prize, PEN America's Jean Stein Book Award, and two awards from the National Book Critics Circle Award. The New York Times named Educated one of the 10 Best Books of 2018,[2] and in a piece written by Bill Gates, Westover was chosen by Time magazine as one of the 100 most influential people of 2019.", 
    picture:"https://pbs.twimg.com/profile_images/1085020880856641537/j5RvL6nm_400x400.jpg")
a2 = Author.create(name: "Michelle Obama", 
    profile: "Michelle LaVaughn Robinson Obama (née Robinson; born January 17, 1964) is an American lawyer, university administrator, and writer, who was the first lady of the United States from 2009 to 2017. She is married to the 44th President of the United States, Barack Obama, and was the first African American First Lady of the United States.",
    picture: "http://www.gstatic.com/tv/thumb/persons/522505/522505_v9_ba.jpg")
a3 = Author.create(name: "Malcolm Gladwell", 
    profile: "Malcolm Timothy Gladwell CM (born September 3, 1963) is a Canadian journalist, author, and public speaker.[1] He has been a staff writer for The New Yorker since 1996. He has published six books: The Tipping Point: How Little Things Can Make a Big Difference (2000); Blink: The Power of Thinking Without Thinking (2005); Outliers: The Story of Success (2008); What the Dog Saw: And Other Adventures (2009), a collection of his journalism; David and Goliath: Underdogs, Misfits, and the Art of Battling Giants (2013); and Talking To Strangers: What We Should Know about the People We Don't Know (2019).",
    picture: "http://www.gstatic.com/tv/thumb/persons/636584/636584_v9_bb.jpg")
a4 = Author.create(name: "Elton John", 
    profile: "Sir Elton Hercules John CH CBE (born Reginald Kenneth Dwight; 25 March 1947[1]) is an English singer, songwriter, pianist, and composer. He has worked with lyricist Bernie Taupin since 1967; they have collaborated on more than 30 albums. John has sold more than 300 million records, making him one of the world's best-selling music artists.[2][3] He has more than fifty Top 40 hits, as well as seven consecutive number-one albums in the United States, 58 Billboard Top 40 singles, 27 Top 10 singles, four of which peaked at number two and nine of which reached number one. His tribute single Candle in the Wind 1997, rewritten in dedication to Diana, Princess of Wales, sold over 33 million copies worldwide and is the best-selling single in the history of the UK and US singles charts",
    picture: "https://www.biography.com/.image/t_share/MTE1ODA0OTcxNjc0MjczMjkz/elton-john-9355335-2-402.jpg")
a5 = Author.create(name: "Brian Kilmeade", 
    profile: "Brian Kilmeade (born May 7, 1964) is an American television and radio presenter for Fox News. On weekdays he co-hosts Fox's morning show, Fox & Friends, and he hosts the Fox News Radio program The Brian Kilmeade Show. He has been credited as co-author on fiction and non-fiction books.",
    picture: "http://www.gstatic.com/tv/thumb/persons/384997/384997_v9_ba.jpg")

g1 = Genre.create(name: "Fiction", 
    profile: "literature in the form of prose, especially short stories and novels, that describes imaginary events and people.",
    picture: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUwVk5iRRVQuBuTrYGwicp-4y6ykJF1vwxB0iWvfOTgEq4fxqXgg&s")
g2 = Genre.create(name: "Non Fiction", 
    profile: "prose writing that is based on facts, real events, and real people, such as biography or history.",
    picture: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSSCAYAfaABbdttrppw_-sPGzknf86QMYPZkMNune_0Vuv1Kc99rQ&s")
g3 = Genre.create(name: "Mystery", 
    profile: "something that is difficult or impossible to understand or explain.",
    picture: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQFj3lFFb8D6yJ5OTQquAKFW6ACc66LQmLEKz2WWRrnbVZNKTLu&s")
g4 = Genre.create(name: "Sci Fi", 
    profile: "fiction based on imagined future scientific or technological advances and major social or environmental changes, frequently portraying space or time travel and life on other planets.",
    picture: "https://mir-s3-cdn-cf.behance.net/projects/404/639ec781688203.Y3JvcCwxNzAxLDEzMzAsMCw3OTU.jpg")
g5 = Genre.create(name: "Autobiography", 
    profile: "an account of a person's life written by that person.",
    picture: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSeQoRvZD1w--8SXth6bspDC50VzafcwqexTBpM9EV5Er7mPTPa&s")

b1 = Book.create(title: "Educated", author_id: a1.id, genre_id: g1.id,
     summary: "Educated by Tara Westover is a memoir that describes the struggle of a young girl who escapes from violence and an emotional prison. It is a conflicting story of fierce family loyalty as well as that of the intense sorrow that arises from the division of one's closest ties.",
    picture: "http://d279m997dpfwgl.cloudfront.net/wp/2018/12/1221_educated-01-1000x666.jpg")
b2 = Book.create(title: "Becoming", author_id: a2.id, genre_id: g2.id,
     summary: "Becoming is the memoir of former United States first lady Michelle Obama published in 2018. Described by the author as a deeply personal experience, the book talks about her roots and how she found her voice, as well as her time in the White House, her public health campaign, and her role as a mother.",
    picture: "https://media.glamour.com/photos/5be9abff850e6e4fa8e50d3d/master/pass/obama-river.jpg")
b3 = Book.create(title: "Talking to Strangers", author_id: a3.id, genre_id: g3.id,
     summary: "We have people struggling when they meet with someone only once, and people struggling when they return to the stranger again and again. They struggle with assessing a stranger's honesty, they struggle with a stranger's character, they struggle with a stranger's intent. It's a mess.",
    picture: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQLCxmY0eEy-lDgTcsoQyKSkoQcJ1Afp8pTwcAn-Lv0XtKnxv0y&s")
b4 = Book.create(title: "Me", author_id: a4.id, genre_id: g4.id,
     summary: "In 'Me,' a hairplugs-and-all memoir that pushes the envelope for aging rock star candor, he describes the shrieks of his mum ('Oh! I can't look!') as she insisted on watching the 1972 porn film “Deep Throat” aboard the plane while John's band members presumably cringed and kept their distance.",
    picture: "https://images-na.ssl-images-amazon.com/images/I/91RlI2uxtTL.jpg")
b5 = Book.create(title: "Sam Houston and the Alamo Avengers", author_id: a5.id, genre_id: g5.id, 
    summary: "n March 1836, the Mexican army led by General Santa Anna massacred more than two hundred Texians who had been trapped in the Alamo. After thirteen days of fighting, American legends Jim Bowie and Davey Crockett died there, along with other Americans who had moved to Texas looking for a fresh start. It was a crushing blow to Texas’s fight for freedom.",
    picture: "https://i5.walmartimages.com/asr/f3e4ae16-67eb-4f2f-8a03-d9f28e2b0a4c_1.cb5d02f92a8b5aa49639a7578052fc28.jpeg?odnWidth=450&odnHeight=450&odnBg=ffffff")
b6 = Book.create(title: "The Guardians", author_id: a3.id, genre_id: g4.id, 
    summary: "In John Grisham's latest novel, 'The Guardians,' a former priest named Cullen Post works for an organization called Guardian Ministries that scours court transcripts and personal letters from convicts to determine if someone is wrongfully imprisoned for a crime he or she didn't commit.",
    picture: "https://prodimage.images-bn.com/pimages/9780385544184_p1_v3_s550x406.jpg")
b7 = Book.create(title: "The Last Wish", author_id: a2.id, genre_id: g1.id, 
    summary: "The novel is set in an alternative universe, where monsters plague humanity and where Geralt, a witcher, earns his living by killing these monsters. Each section entitled 'The Voice of Reason' is set in Melitele's temple. It chronologically follows Geralt's recovery after being attacked by a striga he was hunting.
    ",
    picture: "https://upload.wikimedia.org/wikipedia/en/thumb/1/14/Andrzej_Sapkowski_-_The_Last_Wish.jpg/220px-Andrzej_Sapkowski_-_The_Last_Wish.jpg")
b8 = Book.create(title: "The Night Fire", author_id: a5.id, genre_id: g2.id, 
    summary: "In Michael Connelly’s latest crime novel, he brings together his character Hieronymus 'Harry' Bosch and his other character Renee Ballard together. His defense attorney character Mickey Haller from 'The Lincoln Lawyer' also appears in a minor role in the novel.",
    picture: "https://twt-thumbs.washtimes.com/media/image/2019/10/31/10312019_81htoon9g1l8201_c1-0-2933-1710_s885x516.jpg?eec8478d47a9962f84c4ba518909630cf76acba0")