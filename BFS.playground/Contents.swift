//: Playground - noun: a place where people can play

var graph = [String: [String]]()

graph["me"] = ["Clair", "Alice", "Bob"]
graph["Clair"] = ["To", "Johny"]
graph["Alice"] = ["Paggy"]
graph["Bob"] = ["Paggy", "Stephan"]

func search(for name: String) -> String {
    guard var friendsList = graph[name] else {
        return "No friends in the list"
    }
    
    var checkedNames = [String]()
    
    while !friendsList.isEmpty {
        let person = friendsList.remove(at: 0)
        
        if !checkedNames.contains(person) {
            if isRightPerson(name: person) {
                return person
            } else {
                if let newFriends = graph[person] {
                    friendsList = friendsList + newFriends
                }
                
                checkedNames.append(person)
            }
        } else {
            print("`\(person)` already has been checked.")
        }
    }
    
    return "Could not find a person whose name ends with `M`"
}

// Helper function which helps us in imitating
// our search purposes. In this case we were looking for
// person whoes name ends with `M` letter.
func isRightPerson(name: String) -> Bool {
    if name.last == "m" {
        return true
    } else {
        return false
    }
}

print(search(for: "me"))
