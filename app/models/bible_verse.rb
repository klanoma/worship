class BibleVerse < ActiveRecord::Base
  belongs_to:bible_book
  belongs_to:bible_translation
  has_many:bible_verses
end
