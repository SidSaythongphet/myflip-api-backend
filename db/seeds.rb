'Seeding Data...'

10.times do 
    first = Faker::Name.first_name 
    last = Faker::Name.last_name 
    username = "#{first}#{last}#{rand(1..10)}"
    email = first + last + "@ss.com"

    User.create(
        first_name: first,
        last_name: last, 
        username: username,
        email: email, 
        password: '13245',
        password_confirmation: '13245', 
    )
end

'Seeding Done!'