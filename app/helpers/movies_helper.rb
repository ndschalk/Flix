module MoviesHelper
  def format_total_gross(movie)
    if movie.released_on.year > 1980 == false
      content_tag(:strong, 'Classic Movie!')
    elsif movie.flop?
      content_tag(:strong, 'Flop!')
    else
      number_to_currency(movie.total_gross)
    end
  end

  def image_for(movie)
    if movie.image.exists?
      image_tag(movie.image.url)
    else
      image_tag('placeholder.png')
    end
  end

  def delete_review_image
    image_tag('trash.png', style: 'border: 0', title: 'Delete Review')
  end

  def format_average_stars(movie)
    if movie.average_stars.nil?
      content_tag(:strong, 'No reviews')
    else
      pluralize(number_with_precision(movie.average_stars, :precision => 1) , 'star')
    end
  end
end
