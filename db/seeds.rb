role_one = Role.create(character_name: "Romeo")
role_two = Role.create(character_name: "Juliette")
role_three = Role.create(character_name: "Marcutio")

Audition.create(actor: "Bridget", location: "NY", phone: 201, hired: true, role_id:  role_one.id)
Audition.create(actor: "Lily", location: "Heart", phone: 111, hired: false, role_id: role_one.id)
Audition.create(actor: "Bob", location: "NV", phone: 222, hired: true, role_id: role_three.id)
Audition.create(actor: "Mik", location: "NJ", phone: 333, hired: false, role_id: role_two.id)
Audition.create(actor: "Raf", location: "VT", phone: 444, hired: true, role_id: role_three.id )