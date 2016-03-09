movies = []

movies << {
  title: "Forest Gump",
  budget: 55,
  stars: ["Tom Hanks"]
}
movies << {
  title: "Star Wars",
  budget: 11,
  stars: ["Mark Hamill", "Harrison Ford"]
}
movies << {
  title: "Batman Begins",
  budget: 150,
  stars: ["Christian Bale", "Liam Neeson", "Michael Caine"]
}
movies << {
  title: "Titanic",
  budget: 200,
  stars: ["Kate Winslet", "Leonardo DiCaprio"]
}
movies << {
  title: "Inception",
  budget: 160,
  stars: ["Leonardo DiCaprio", "JGL"]
}



movies.each do |movie|
  budget = movies.fetch(:budget)
  if budget.to_i < 100
    cheap_movie.push(movie)
  end
end

movies.each do |movie|
  stars = movies.fetch(:stars)
  if stars == "Leonardo DiCaprio"
    leonardo_movie.push(movie)
  end
end
