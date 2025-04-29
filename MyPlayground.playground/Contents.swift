var greeting = "Hello, playground"

print(greeting)

greeting = "hello new greeting"

print(greeting)

// arrays
let names: [String] = ["name1", "name2", "name3"]
for name in names {
    print("My name is : \(name)")
}

// struct
struct PersonWithHobby {
    let name: String
    let hobby: String
}

let persons: [PersonWithHobby] = [
    PersonWithHobby(name: "Name1", hobby: "Hobby 1"),
    PersonWithHobby(name: "Name2", hobby: "Hobby 2"),
    PersonWithHobby(name: "Name3", hobby: "Hobby 3")
]

for person in persons {
    print("\(person.name.uppercased()) => \(person.hobby)")
}

var hobby: String? = "helo"
if let h = hobby {
//    h = "ddddd"
    print(h)
}

var i = 0
repeat {
    print(i)
    i += 1
}while(i < 10)
