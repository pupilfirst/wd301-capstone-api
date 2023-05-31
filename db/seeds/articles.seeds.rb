puts "Seeding cricket articles..."

cricket_thumbnail_urls = [
  'https://images.pexels.com/photos/7702229/pexels-photo-7702229.jpeg',
  'https://images.pexels.com/photos/3800517/pexels-photo-3800517.jpeg',
  'https://images.pexels.com/photos/2799556/pexels-photo-2799556.jpeg',
  'https://images.pexels.com/photos/9153468/pexels-photo-9153468.jpeg'
]

football_thumbnail_urls = [
  'https://images.pexels.com/photos/46798/the-ball-stadion-football-the-pitch-46798.jpeg',
  'https://images.pexels.com/photos/61143/pexels-photo-61143.jpeg',
  'https://images.pexels.com/photos/2039817/pexels-photo-2039817.jpeg',
  'https://images.pexels.com/photos/1657328/pexels-photo-1657328.jpeg',
  'https://images.pexels.com/photos/3212317/pexels-photo-3212317.jpeg'
]

basketball_thumbnail_urls = [
  'https://images.pexels.com/photos/1752757/pexels-photo-1752757.jpeg',
  'https://images.pexels.com/photos/358042/pexels-photo-358042.jpeg',
  'https://images.pexels.com/photos/1607855/pexels-photo-1607855.jpeg',
  'https://images.pexels.com/photos/2260849/pexels-photo-2260849.jpeg'
]

table_tennis_thumbnail_urls = [
  'https://images.pexels.com/photos/3846048/pexels-photo-3846048.jpeg',
  'https://images.pexels.com/photos/187329/pexels-photo-187329.jpeg',
]



sports_articles = {
  6 => [
    {
      "title" => "India Defeats Australia in Thrilling Test Match",
      "summary" => "India secures a historic victory against Australia in a nail-biting test match, showcasing exceptional batting and bowling performances.",
      "thumbnail_url" => cricket_thumbnail_urls.sample,
      "content" => "India emerged victorious in a thrilling test match against Australia, displaying exceptional cricketing skills and determination. The match witnessed intense competition as both teams fought hard for the win. India's batting lineup showcased resilience, with players like Virat Kohli and Cheteshwar Pujara leading the charge. The bowlers, including Jasprit Bumrah and Ravichandran Ashwin, displayed outstanding skills, taking crucial wickets. The match concluded with a dramatic final over, as India successfully chased down the target set by Australia, sparking celebrations among cricket fans worldwide.\n\nIt was a historic moment for Indian cricket, as the team's hard work and dedication paid off. The victory against a formidable Australian side will be remembered for years to come. The match highlighted the true spirit of the game, with both teams exhibiting sportsmanship and pushing each other to their limits. Fans were treated to an exhilarating display of cricketing talent, creating unforgettable memories."
    },
    {
      "title" => "World Cup Final Ends in a Tiebreaker",
      "summary" => "The ICC Cricket World Cup final ends in a thrilling tiebreaker, with England declared the winner based on the boundary count rule.",
      "thumbnail_url" => cricket_thumbnail_urls.sample,
      "content" => "In a highly anticipated ICC Cricket World Cup final, England and New Zealand battled it out in a match that ended in a nail-biting tiebreaker. The teams displayed exceptional cricketing skills, with several memorable moments throughout the game. The match concluded with a tied score, leading to a thrilling super over. However, even the super over resulted in a tie, creating a unique situation. Ultimately, England was declared the winner based on the boundary count rule, sparking debates and discussions among cricket enthusiasts worldwide.\n\nThe final was an extraordinary display of talent, resilience, and sportsmanship. Both teams gave their all, and the match showcased the unpredictable nature of cricket. The tension was palpable as fans witnessed an intense battle between bat and ball. The tiebreaker added an extra layer of drama, highlighting the fine margins that can determine the outcome of a high-stakes match. It will be remembered as one of the most thrilling moments in cricket history."
    },
    {
      "title" => "Legendary Cricketer Retires After Glorious Career",
      "summary" => "One of cricket's legends, Kumar Sangakkara, announces retirement after a glorious career spanning two decades.",
      "thumbnail_url" => cricket_thumbnail_urls.sample,
      "content" => "After an illustrious cricketing career spanning two decades, Kumar Sangakkara, one of the sport's legends, has decided to hang up his boots. Sangakkara's career has been nothing short of remarkable, with numerous records and accolades to his name. His elegant batting style and exceptional leadership skills made him a fan favorite. As he bids farewell to the game, cricket fans around the world express gratitude for his contributions and reflect on the memorable moments he provided throughout his career.\n\nSangakkara's impact on the sport goes beyond statistics. His ability to adapt to different formats of the game, his composure under pressure, and his dedication to the spirit of cricket have earned him immense respect. He leaves a lasting legacy as one of the finest cricketers to have graced the field. As fans, we will forever cherish the memories of his graceful cover drives, his astute wicketkeeping, and his eloquent speeches off the field. Sangakkara's retirement marks the end of an era, but his influence on the sport will continue to inspire generations of cricketers."
    },
    {
      "title" => "Cricket Stadium Renovation Enhances Fan Experience",
      "summary" => "A major cricket stadium undergoes renovations, introducing state-of-the-art facilities to enhance the overall fan experience.",
      "thumbnail_url" => cricket_thumbnail_urls.sample,
      "content" => "In an effort to elevate the fan experience, a major cricket stadium has recently undergone extensive renovations. The upgrades include the addition of modern amenities, such as improved seating arrangements, enhanced sightlines, and state-of-the-art facilities. The renovated stadium aims to provide spectators with an immersive and enjoyable experience while watching matches. The management team has also focused on enhancing safety measures and introducing innovative technology to further enrich the overall cricket-watching experience.\n\nThe renovated stadium now boasts comfortable seating options, ensuring that fans have an unobstructed view of the action on the field. The introduction of high-definition video screens enhances replays and allows spectators to catch every thrilling moment. The stadium's food and beverage offerings have also been upgraded, with a wide range of culinary delights to cater to diverse tastes. Additionally, the stadium now features improved accessibility and facilities for fans with disabilities, promoting inclusivity in the cricket community.\n\nThese renovations reflect the commitment to providing an unforgettable experience for cricket fans. The stadium is set to become a hub of excitement, where supporters can cheer for their favorite teams in a world-class environment. Whether it's witnessing a thrilling century, celebrating a wicket, or simply enjoying the camaraderie of fellow fans, the renovated stadium will undoubtedly leave a lasting impression."
    },
    {
      "title" => "Young Cricketer Shines in Debut Match",
      "summary" => "A young and talented cricketer makes a remarkable debut, showcasing incredible skills and earning accolades from cricketing legends.",
      "thumbnail_url" => cricket_thumbnail_urls.sample,
      "content" => "A promising young cricketer has made a sensational debut in international cricket, capturing the attention of fans and cricketing legends alike. The player displayed remarkable skills, exhibiting a sound technique and maturity beyond their years. With a blend of elegant stroke play and calculated bowling, the young cricketer left a lasting impression on the field. This debut performance has generated excitement and optimism for the player's future and has drawn comparisons to legendary cricketers who made a similar impact early in their careers.\n\nThe young cricketer's debut match was a testament to their dedication, hard work, and natural talent. From the moment they walked onto the field, it was evident that they possessed the skills and temperament required to succeed at the highest level. Their batting showcased impeccable timing and shot selection, while their bowling displayed precision and the ability to outfox experienced batsmen. The performance earned accolades from cricketing legends, who praised the young cricketer's composure and maturity under pressure.\n\nAs fans, we eagerly anticipate witnessing the continued growth and success of this promising talent. The future of cricket looks bright with the emergence of such gifted players, and we can't wait to see how their career unfolds. Their debut match serves as a reminder of the beauty of the sport and the endless possibilities that lie ahead."
    }
    # More articles
  ],
  2 => [
    {
      "title" => "Messi Leads Barcelona to Victory in El Clasico",
      "summary" => "Lionel Messi's exceptional performance guides Barcelona to a resounding victory over arch-rivals Real Madrid in the highly anticipated El Clasico match.",
      "thumbnail_url" => football_thumbnail_urls.sample,
      "content" => "In a thrilling showdown between two Spanish giants, Barcelona emerged victorious against Real Madrid in the highly anticipated El Clasico match. Lionel Messi, the maestro of Barcelona, showcased his brilliance on the field, scoring a mesmerizing hat-trick and orchestrating the team's dominant performance. The match witnessed exhilarating goals, intense rivalries, and moments of pure magic from Messi, leaving fans in awe. Barcelona's triumph in El Clasico is a testament to their determination and the unrivaled talent of their star player.\n\nThe win not only strengthens Barcelona's position in the league but also ignites the rivalry between the two clubs. El Clasico has always been a spectacle of footballing brilliance, and this match was no exception. The intensity, the passion, and the sheer skill displayed by both teams added to the rich history of this iconic fixture. Messi's masterclass performance will go down in football folklore, forever etching his name among the greatest players to have graced the sport."
    },
    {
      "title" => "Record-Breaking Transfer Deal Shakes Football World",
      "summary" => "A groundbreaking transfer deal sets a new record as one of the most expensive transfers in football history, making headlines worldwide.",
      "thumbnail_url" => football_thumbnail_urls.sample,
      "content" => "The football world has been left stunned by a groundbreaking transfer deal that has shattered previous records. In a remarkable move, a top-tier club has secured the services of a world-class player for a staggering transfer fee, surpassing all expectations. The deal has sent shockwaves across the footballing landscape and has become the talk of the town. Football enthusiasts and pundits alike are analyzing the implications of this unprecedented transfer, as it changes the dynamics of the sport and raises the bar for future transfers.\n\nThe record-breaking deal underscores the immense financial power and ambition of modern football clubs. It highlights the ever-increasing stakes in the transfer market and the willingness of clubs to invest significant sums to acquire top talent. The player in question brings a wealth of skill, experience, and star power, and their arrival is expected to have a transformative impact on the team. Fans are eagerly anticipating their debut and the prospect of witnessing their unique playing style and contribution to the club's success.\n\nThe transfer deal not only reflects the competitive nature of football but also the global appeal and economic influence of the sport. It serves as a reminder of the sport's ability to capture public attention and generate headlines worldwide."
    },
    {
      "title" => "Upset Victory as Underdog Team Defeats League Leaders",
      "summary" => "In a stunning upset, an underdog team overcomes the odds to defeat the league leaders, sending shockwaves through the footballing world.",
      "thumbnail_url" => football_thumbnail_urls.sample,
      "content" => "In a match that defied all expectations, an underdog team delivered a remarkable upset by defeating the league leaders in a thrilling encounter. The match showcased the unpredictable nature of football, as the underdog team displayed immense determination, tactical brilliance, and clinical finishing. The victory has sent shockwaves through the footballing world, highlighting the magic and unpredictability that makes the sport so captivating.\n\nThe underdog's triumph serves as a reminder that in football, anything is possible. It demonstrates the importance of teamwork, belief, and seizing opportunities when they arise. The victory not only boosts the underdog's confidence but also adds a new dimension to the league, injecting excitement and uncertainty into the title race.\n\nThe footballing world is buzzing with discussions and analysis of this surprising result. Fans and pundits are marveling at the underdog's resilience, as well as questioning the league leaders' performance on the day. This thrilling upset will forever be etched in the memories of both the underdog's fans and football enthusiasts worldwide."
    },
    {
      "title" => "Rising Star Emerges as Top Scorer of the Season",
      "summary" => "A young and talented player shines as the top scorer of the season, captivating audiences with their goal-scoring prowess and skill.",
      "thumbnail_url" => football_thumbnail_urls.sample,
      "content" => "A rising star has captured the footballing world's attention by emerging as the top scorer of the season. With a relentless goal-scoring spree, this young and talented player has left defenders in their wake and captivated audiences with their remarkable skills. Their ability to find the back of the net with precision and consistency has elevated them to the top of the goal-scoring charts, earning admiration from fans, teammates, and pundits.\n\nThe rising star's success is a testament to their dedication, hard work, and natural talent. They have displayed a combination of speed, agility, and composure in front of goal that belies their age. Their goal-scoring exploits have not only propelled their team to victories but have also generated excitement and optimism for the future.\n\nFootball enthusiasts eagerly await each match, eager to witness the rising star's next goal and marvel at their ability to influence the outcome of games. Their meteoric rise serves as an inspiration to aspiring young players around the world, demonstrating that with talent, determination, and opportunity, dreams can become reality on the football pitch."
    },
    {
      "title" => "Historic Derby Match Ends in Thrilling Draw",
      "summary" => "A historic derby match between two fierce rivals ends in a thrilling draw, leaving fans on the edge of their seats and craving for more.",
      "thumbnail_url" => football_thumbnail_urls.sample,
      "content" => "A highly anticipated derby match between two fierce rivals lived up to the expectations, providing a spectacle of footballing brilliance and nail-biting drama. The match showcased the intensity, passion, and rivalry that define derby encounters, captivating fans and leaving them on the edge of their seats. Both teams displayed their attacking prowess and defensive resilience, resulting in a hard-fought and enthralling draw.\n\nThe historic significance of this derby match added an extra layer of excitement. It represented not only the clash of two teams but also the clash of pride, history, and tradition. The atmosphere in the stadium was electric, with passionate fans chanting and waving flags in support of their respective teams.\n\nThe thrilling draw leaves fans craving for the next encounter between these arch-rivals, eagerly anticipating the chance for one team to claim bragging rights over the other. The match served as a reminder of the power of football to unite and divide, and the everlasting impact that derby matches have on the sport and its fans."
    }
  ],
  1 => [
    {
      "title" => "Record-Breaking Performance: Player Sets New Scoring Record in a Single Game",
      "summary" => "In a historic feat, a basketball player sets a new scoring record in a single game, leaving fans and experts in awe of their extraordinary skills.",
      "thumbnail_url" => basketball_thumbnail_urls.sample,
      "content" => "Basketball history was rewritten as a player delivered a breathtaking performance, shattering the previous record for the most points scored in a single game. Displaying an exceptional blend of skill, athleticism, and determination, the player dominated the court, leaving defenders helpless and spectators astonished. Their remarkable scoring spree captivated basketball fans worldwide and etched their name in the annals of the sport.\n\nThroughout the game, the player showcased a dazzling array of offensive moves, precision shooting, and strategic playmaking. They displayed an unparalleled ability to navigate through defenses, create scoring opportunities, and convert them with unmatched efficiency. The record-breaking performance not only solidifies their place among basketball's elite but also serves as a source of inspiration for aspiring players.\n\nThe significance of this achievement extends beyond the individual player. It symbolizes the relentless pursuit of excellence and the limitless potential of basketball as a sport. Fans and experts alike are left in awe of the player's extraordinary skills and eagerly anticipate their future performances, hoping to witness more historic moments on the basketball court."
    },
    {
      "title" => "Intense Rivalry Rekindled: Teams Face Off in Epic Showdown",
      "summary" => "Two basketball powerhouses reignite their intense rivalry in an epic showdown, captivating fans with their competitive spirit and breathtaking displays of skill.",
      "thumbnail_url" => basketball_thumbnail_urls.sample,
      "content" => "In a highly anticipated clash between two basketball powerhouses, fans were treated to an unforgettable showdown filled with electrifying plays, fierce competition, and dramatic moments. The rivalry between these two teams is steeped in history and tradition, and the match lived up to its billing as one of the most highly anticipated games of the season.\n\nThe game unfolded with relentless intensity, as both teams showcased their deep rosters, strategic gameplay, and exceptional talent. The players left everything on the court, diving for loose balls, executing precision passes, and showcasing their shooting prowess. The ebb and flow of the game kept fans on the edge of their seats, as the lead changed hands multiple times and the outcome remained uncertain until the final buzzer.\n\nThe rekindling of this intense rivalry serves as a reminder of the rich legacy and passion that basketball evokes. Fans from both sides filled the arena with deafening cheers, creating an electric atmosphere. The game not only showcased the individual brilliance of the players but also highlighted the importance of teamwork, resilience, and sportsmanship.\n\nAs the final buzzer sounded, the teams embraced in a display of mutual respect and admiration. The thrilling showdown left fans craving for more and sets the stage for future encounters that promise to deliver the same level of excitement and drama."
    },
    {
      "title" => "Rising Star Takes the League by Storm",
      "summary" => "A young basketball player emerges as a rising star, captivating the league with their exceptional skills, dynamic playing style, and infectious enthusiasm.",
      "thumbnail_url" => basketball_thumbnail_urls.sample,
      "content" => "In a league brimming with talent, a young basketball player has burst onto the scene, captivating fans, teammates, and pundits alike. With a combination of electrifying athleticism, pinpoint shooting, and dazzling court vision, the rising star has quickly become a force to be reckoned with. Their dynamic playing style, coupled with an infectious enthusiasm for the game, has endeared them to fans and earned the respect of seasoned veterans.\n\nThe rising star's impact extends beyond their individual performances. They have brought a renewed energy and excitement to their team, elevating the level of play and inspiring their teammates to raise their game. The league has taken notice, with accolades and recognition pouring in for the young phenom.\n\nBasketball enthusiasts eagerly await each game, eager to witness the rising star's acrobatic dunks, clutch shots, and jaw-dropping displays of skill. Their meteoric rise serves as a reminder of the ever-evolving nature of the sport, where new talents emerge and push the boundaries of what is possible on the basketball court.\n\nAs the young player continues to make headlines and leave spectators in awe, the future looks bright for both the individual and the sport of basketball."
    },
    {
      "title" => "Team Makes Historic Comeback: Overcoming Adversity to Secure Victory",
      "summary" => "In a remarkable display of resilience and determination, a basketball team stages a historic comeback, defying the odds and securing an unforgettable victory.",
      "thumbnail_url" => basketball_thumbnail_urls.sample,
      "content" => "In a game that will be remembered for years to come, a basketball team showcased an extraordinary level of resilience and determination, staging a comeback for the ages. Trailing by a significant margin, the team refused to give up, rallying together to overcome adversity and secure an unforgettable victory.\n\nThe comeback unfolded in a series of thrilling moments, as the team executed precise plays, locked down defensively, and unleashed a barrage of scoring. The players displayed unwavering belief in their abilities and demonstrated the power of teamwork and unity in the face of adversity.\n\nThe historic nature of this comeback victory adds an extra layer of significance to the team's achievement. It symbolizes the never-say-die spirit and the inherent unpredictability of basketball, where momentum can shift in an instant. Fans were treated to a display of passion, skill, and sheer determination, leaving them in awe of the team's ability to defy the odds.\n\nThe victory not only boosts the team's confidence but also serves as a source of inspiration for future generations of basketball players. It showcases the transformative power of sports and the ability of individuals and teams to rise above challenges and achieve greatness."
    },
    {
      "title" => "Legendary Coach Announces Retirement: Reflecting on a Storied Career",
      "summary" => "A legendary basketball coach announces their retirement, prompting reflection on their illustrious career, impact on the sport, and lasting legacy.",
      "thumbnail_url" => basketball_thumbnail_urls.sample,
      "content" => "In a moment that marks the end of an era, a legendary basketball coach has announced their retirement, bringing an illustrious career to a close. The coach's impact on the sport is immeasurable, with numerous championships, accolades, and a lasting legacy that will be remembered for generations.\n\nThroughout their career, the coach guided teams to remarkable success, instilling a winning culture, and nurturing the talents of their players. Their strategic brilliance, leadership, and ability to motivate and inspire have left an indelible mark on the basketball landscape.\n\nThe retirement announcement has prompted reflection on the coach's storied career, with fans and players alike reminiscing about memorable victories, iconic moments, and the coach's unwavering commitment to excellence. The coach's influence extends far beyond the court, as they have shaped the lives of countless individuals, instilling values of discipline, teamwork, and perseverance.\n\nAs the coach takes their final bow, the basketball community celebrates their remarkable achievements and expresses gratitude for the countless contributions they have made to the sport. Their retirement marks the end of an era but serves as a reminder of the enduring impact a legendary coach can have on the game of basketball."
    },
  ],
  5 => [
    {
      "title" => "Intense Battle in Table Tennis Championship: Players Showcase Skill and Precision",
      "summary" => "In a thrilling clash of table tennis titans, players demonstrate their exceptional skills, lightning-fast reflexes, and strategic prowess, captivating fans with an intense battle of precision and agility.",
      "thumbnail_url" => table_tennis_thumbnail_urls.sample,
      "content" => "Table tennis enthusiasts were treated to an electrifying showdown as two top-ranked players clashed in a championship match that showcased the very best of the sport. The players displayed unmatched skill and precision, executing lightning-fast shots, strategic placements, and jaw-dropping rallies that left spectators in awe.\n\nThroughout the match, the players showcased lightning-fast reflexes, agile footwork, and exceptional hand-eye coordination. Their ability to anticipate their opponent's moves and respond with lightning-quick counterattacks was a testament to their years of training and dedication to the sport. The match was characterized by intense rallies, close scorelines, and moments of sheer brilliance that had the crowd on the edge of their seats.\n\nTable tennis, often referred to as the fastest racket sport in the world, demands exceptional speed, agility, and mental focus. The championship match served as a prime example of the sport's intensity and showcased the incredible talent and athleticism of the players. It was a true spectacle of precision, strategy, and sheer determination.\n\nAs the final point was won and the players exchanged a show of sportsmanship, the match will be remembered as a classic display of table tennis excellence. Fans were left in awe of the skill and athleticism demonstrated by the players and eagerly await their next encounter on the table."
    },
    {
      "title" => "Emerging Talent in Table Tennis: Young Player Makes Waves on the International Stage",
      "summary" => "A young table tennis prodigy bursts onto the international scene, impressing fans and experts alike with their exceptional talent, composure, and potential to become a future star in the sport.",
      "thumbnail_url" => table_tennis_thumbnail_urls.sample,
      "content" => "In the world of table tennis, a young prodigy has emerged, captivating the attention of fans and experts with their extraordinary talent and potential. Despite their tender age, the player showcases remarkable composure, technical proficiency, and an innate understanding of the game.\n\nThe young talent's rise to prominence has been marked by impressive performances in international tournaments, where they have faced seasoned players and consistently delivered outstanding results. Their ability to execute powerful shots, vary spin and speed, and adapt to different playing styles has made them a formidable force in the table tennis community.\n\nFans and experts alike marvel at the player's natural ability, work ethic, and dedication to continuous improvement. With each match, they continue to demonstrate their potential to become a future star in the sport, inspiring a new generation of table tennis enthusiasts.\n\nThe emergence of this young talent not only adds excitement to the table tennis landscape but also reinforces the sport's reputation for nurturing and developing exceptional players. As they continue to hone their skills and gain valuable experience, the future looks bright for this rising star, and their journey will be closely followed by fans and professionals around the world."
    },
    {
      "title" => "Table Tennis Championship Comes to a Thrilling Conclusion: Unforgettable Matches and Upsets",
      "summary" => "The table tennis championship reaches its climax with exhilarating matches, unexpected upsets, and unforgettable moments that showcase the fierce competition and unpredictability of the sport.",
      "thumbnail_url" => table_tennis_thumbnail_urls.sample,
      "content" => "The table tennis championship concluded in a grand finale that left fans exhilarated and in awe of the remarkable talent and competitive spirit on display. Throughout the tournament, players delivered breathtaking performances, with each match filled with intense rallies, strategic shots, and nail-biting moments.\n\nAs the tournament progressed, unexpected upsets added an extra layer of excitement. Underdogs rose to the occasion, top-ranked players faced tough challenges, and the tournament witnessed the emergence of new contenders. The fierce competition showcased the depth of talent in the table tennis world and highlighted the unpredictability of the sport.\n\nSpectators were treated to unforgettable matches that showcased the dynamic nature of table tennis. From lightning-fast exchanges of shots to strategic rallies filled with spin and placement, each match offered a glimpse into the sheer skill and agility required to excel in the sport.\n\nThe championship's conclusion marked a celebration of the players' dedication, hard work, and passion for table tennis. It was a testament to the sport's ability to captivate audiences and create moments of sporting brilliance. As the champions were crowned and the tournament drew to a close, fans were left with lasting memories of a thrilling competition and anticipation for the next edition of the championship."
    },
    {
      "title" => "Table Tennis Legends Honored: Celebrating the Contributions of Icons to the Sport",
      "summary" => "The table tennis community pays tribute to the legendary figures who have made significant contributions to the sport, reflecting on their achievements, impact, and enduring legacy.",
      "thumbnail_url" => table_tennis_thumbnail_urls.sample,
      "content" => "In a heartfelt ceremony, the table tennis community gathered to honor the legends who have left an indelible mark on the sport. These iconic figures, through their exceptional skill, dedication, and sportsmanship, have not only achieved remarkable success but also elevated table tennis to new heights.\n\nThe event was a celebration of the champions' accomplishments, both on and off the table. Their achievements in international competitions, their contributions to the development of the sport, and their unwavering commitment to promoting table tennis were acknowledged and applauded.\n\nAs the tributes poured in, stories of legendary matches, iconic rivalries, and moments of sporting brilliance were shared, reigniting the passion and admiration for these table tennis icons. The event served as a reminder of the rich history and tradition of the sport, as well as the profound impact that these legends have had on shaping its future.\n\nThe legends' enduring legacy was felt throughout the ceremony, as their names became synonymous with excellence, inspiration, and the pursuit of sporting greatness. Their contributions continue to inspire new generations of table tennis players, instilling in them the values of hard work, perseverance, and sportsmanship.\n\nAs the table tennis community came together to honor these icons, the event underscored the deep-rooted respect and appreciation for the players who have elevated table tennis to the global stage."
    },
    {
      "title" => "Innovations in Table Tennis Technology: Advancements Enhancing the Game",
      "summary" => "Technological innovations in table tennis equipment and training methods are revolutionizing the sport, providing players with enhanced performance, precision, and opportunities for skill development.",
      "thumbnail_url" => table_tennis_thumbnail_urls.sample,
      "content" => "Table tennis technology is experiencing a new wave of innovations that are transforming the sport and pushing its boundaries. From state-of-the-art equipment to advanced training methods, these developments are revolutionizing how the game is played and raising the level of performance.\n\nOne area of innovation is the design and construction of table tennis rackets. Manufacturers are incorporating new materials and engineering techniques to create rackets that offer improved grip, control, and power. These advancements allow players to unleash their full potential and execute shots with precision and speed.\n\nAnother aspect of technological innovation is the use of data analytics and training software. Players can now track their performance, analyze their playing style, and identify areas for improvement through specialized applications. These tools provide valuable insights that can help players refine their technique, develop strategic approaches, and enhance their overall game.\n\nAdditionally, training facilities are utilizing virtual reality and augmented reality technologies to simulate match scenarios, provide realistic training environments, and enable players to practice against virtual opponents. These immersive experiences offer unique training opportunities and allow players to sharpen their skills in a controlled and dynamic setting.\n\nThe ongoing advancements in table tennis technology are redefining the sport, equipping players with the tools and resources they need to excel. As the boundaries of what is possible in table tennis continue to expand, athletes are embracing these innovations, pushing the limits of their abilities, and thrilling fans with performances that were once unimaginable."
    }
  ]
}

# Flatten all articles into a single array
all_articles = sports_articles.flat_map do |sport_id, articles|
  articles.map do |article|
    article.merge(sport_id: sport_id)  # Include the sport_id in the article data so we can associate it with the correct sport
  end
end

# Randomize the order of the articles
all_articles.shuffle!

# Seed the articles
all_articles.each do |article_data|
  sport = Sport.find(article_data.delete(:sport_id))  # Find the sport and remove the id from the article data

  Article.create(
    title: article_data["title"],
    summary: article_data["summary"],
    thumbnail_url: article_data["thumbnail_url"],
    content: article_data["content"],
    sport: sport
  )
end