# NOTE: Como le harias para procesar esta estructura
family_tree = [
  {
    identifier: :nicolas_1,
    name: 'Nicolas I',
    father_identifier: nil,
    mother_identifier: nil
  },
  {
    identifier: :celia,
    name: 'Celia',
    father_identifier: nil,
    mother_identifier: nil
  },
  {
    identifier: :nicolas_2,
    name: 'Nicolas I',
    father_identifier: :nicolas_1,
    mother_identifier: :celia
  },
  {
    identifier: :lups,
    name: 'Lups',
    father_identifier: nil,
    mother_identifier: nil
  },
  {
    identifier: :mawie,
    name: 'Mawie',
    father_identifier: :nicolas_2,
    mother_identifier: :lups
  },
  {
    identifier: :hector,
    name: 'Hector',
    father_identifier: :nicolas_2,
    mother_identifier: :lups
  },
  {
    identifier: :cesar,
    name: 'Cesar',
    father_identifier: :nicolas_2,
    mother_identifier: :lups
  },
  {
    identifier: :sofia,
    name: 'Sofia',
    father_identifier: :hector,
    mother_identifier: nil
  },
  {
    identifier: :percy,
    name: 'Percy',
    father_identifier: nil,
    mother_identifier: :mawie
  }
]

family_tree.each do |attribute_set|
  person = Person.create!(attribute_set)
end


# SUGERENCIA: Para declarar relaciones es mejor usar instancias de modelos
# en lugar de usar ids
# en lugar de father_id/mother_id, usar father y mother
# e.g.
# nicolas   = Person.create!(name: 'Nicolas')
# celia     = Person.create!(name: 'Celia')
# nicolas_2 = Person.create!(name: 'Nicolas II', father_id: 1, mother_id: 2)
# Person.create(name: "Nicolas I")
# Person.create(name: "Celia")
# Person.create(name: "Nicolas II", father_id: 1, mother_id: 2)
# Person.create(name: "Lups")
# Person.create(name: "Mawie", father_id: 3, mother_id: 4)
# Person.create(name: "Hector", father_id: 3, mother_id: 4)
# Person.create(name: "Cesar", father_id: 3, mother_id: 4)
# Person.create(name: "Sofia", father_id: 6)
# Person.create(name: "Percy", mother_id: 5)


# DUDA: Por que agrege un identifier
# para usar instancias de modelos y no ids, es mas facil recordar un identifier que un numero de id

# DUDA: Cual es la diferencia entre `ActiveRecord::Base#create` y `ActiveRecord::Base#create!`
# create! crea objetos y los guarda en la db, cuando son validos. En caso de no ser validos levanta un error.
