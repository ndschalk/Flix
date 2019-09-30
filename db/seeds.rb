Movie.create!([
  {
    title: 'Iron Man',
    description:
    %{
      When wealthy industrialist Tony Stark is forced to build an
      armored suit after a life-threatening incident, he ultimately
      decides to use its technology to fight against evil.
    }.squish,
    image_file_name: 'ironman.jpg',
    cast: 'Robert Downey Jr., Gwyneth Paltrow and Terrence Howard',
    released_on: "2008-05-02",
    duration: '126 min',
    director: 'Jon Favreau',
    rating: 'PG-13',
    total_gross: 318_412_101
  },
{
  title: 'Iron Man 2',
  description:
  %{
  With the world now aware of his identity as Iron Man, Tony Stark must contend with both his declining health and a vengeful mad man with ties to his father's legacy.
  }.squish,
  image_file_name: 'ironman2.jpg',
  cast: 'Robert Downey Jr., Mickey Rourke, Gwyneth Paltrow',
  released_on: "2010-05-07",
  duration: '124 min',
  director: 'Jon Favreau',
  rating: 'PG-13',
  total_gross: 312_433_331
},
{
title: 'Thor',
description:
%{
The powerful but arrogant god Thor is cast out of Asgard to live amongst humans in Midgard (Earth), where he soon becomes one of their finest defenders.
}.squish,
image_file_name: 'thor.jpg',
cast: 'Chris Hemsworth, Anthony Hopkins, Natalie Portman',
released_on: "2011-05-06",
duration: '115 min',
director: 'Kenneth Branagh',
rating: 'PG-13',
total_gross: 181_030_620
},
])

movie = Movie.find_by(title: 'Iron Man')
movie.reviews.create!(name: "Roger Ebert", stars: 3, comment: "I laughed, I cried, I spilled my popcorn!")
movie.reviews.create!(name: "Gene Siskel", stars: 5, comment: "I'm a better reviewer than he is.")
movie.reviews.create!(name: "Peter Travers", stars: 4, comment: "It's been years since a movie superhero was this fierce and this funny.")
