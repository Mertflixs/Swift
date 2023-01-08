struct Town {
    let name = "Town"
    var citizens = ["mert","hakan","burak","eyup"]
    var resources = ["Grain": 100, "Ore": 42, "Wood": 75]
    
    func fortify() {
        print("Defences increased!")
    }
}

struct newTown {
    let name: String
    var citizens: [String]
    var resources: [String: Int]
    
    init(name: String, citizens: [String], resources: [String: Int]) {
        self.name = name
        self.citizens = citizens
        self.resources = resources
    }
}

var anotherTown = newTown(name: "Nameless Island", citizens: ["Tom Hanks"], resources: ["Coconut": 100])
anotherTown.citizens.append("Mertflix")
print(anotherTown.citizens)
print(anotherTown.resources)

var myTown = Town()

print(myTown.name)
print("\(myTown.name) has \(myTown.resources["Wood"]!) bags of Wood!")

myTown.citizens.append("Yaratık")
print(myTown.citizens.count)

myTown.fortify()
