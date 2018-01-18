def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT title, year FROM books WHERE series_id = 1 ORDER BY year ASC"
end

def select_name_and_motto_of_char_with_longest_motto
 "SELECT name, motto FROM characters WHERE length(motto) > 30"
end


def select_value_and_count_of_most_prolific_species
  "SELECT species, count(*) FROM characters WHERE species = 'human'"
end

def select_name_and_series_subgenres_of_authors
  "SELECT authors.name, subgenres.name FROM authors JOIN subgenres WHERE subgenres.id = authors.id"
end

def select_series_title_with_most_human_characters
  # characters.species count = 'human' 
  "SELECT title FROM series JOIN characters ON series.id = characters.series_id WHERE species = 'human' GROUP BY species HAVING count(*) > 3"
end

def select_character_names_and_number_of_books_they_are_in
  # how many times does character _ appear in 
  # how many times does the same character_id appear in character_books
  "SELECT character_id, count(*) FROM character_books  GROUP BY character_id ORDER BY count(*) desc" 

# ORDER BY count(*) desc"
  #  "SELECT characters.name, character_id FROM characters JOIN character_books WHERE character_books.id = character_id ORDER BY book_id DESC"
end
