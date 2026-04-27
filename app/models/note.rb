class Note < ApplicationRecord
  validates :title, presence: { message: "no puede estar vacío" }
  validates :content, length: { minimum: 10, message: "debe tener al menos 10 caracteres" }
  # Nueva función de búsqueda:
  def self.search(query)
    if query.present?
      where("title LIKE ?", "%#{query}%")
    else
      all
    end
  end
end
