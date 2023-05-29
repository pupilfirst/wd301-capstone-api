puts "Seeding cricket articles..."

content = "Cricket is a bat-and-ball game played between two teams of eleven players on a field at the center of which is a rectangular 22-yard-long pitch. It is the most popular sport in many countries, especially in the Indian subcontinent, Australia, England, and South Africa. The game originated in England and has a rich history dating back centuries. Cricket is known for its complex rules, strategies, and diverse formats, including Test matches, One Day Internationals (ODIs), and Twenty20 (T20) matches."

article = Article.create!(
  title: "Cricket: The Most Popular Sport",
  summary: "Learn about the history and popularity of cricket worldwide.",
  content: content,
  thumbnail_url: "https://images.pexels.com/photos/7702229/pexels-photo-7702229.jpeg",
  sport: "Cricket"
)
