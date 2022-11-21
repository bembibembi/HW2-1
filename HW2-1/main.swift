import Foundation

class Human{
    var name: String
    var age: Int
    var country: String
    var city: String

    init(name: String, age: Int, country: String, city: String){
        self.name = name
        self.age = age
        self.country = country
        self.city = city
}

    func printInfo(){
         print("меня зовут \(name) мне \(age) лет, я из страны \(country) ,город \(city)")
 }
}
var Hanna = Human(name: "Hanna", age: 19 , country: "USA", city: "Gottom" )
var jasmin = Human(name: "jasmin", age: 18, country: "Kyrgyzstan", city: "Balykchy")
var Sergey = Human (name: "Sergey", age: 56, country: "Russia", city: "Moskva")
Hanna.printInfo()
jasmin.printInfo()
Sergey.printInfo()
var HumanArray: [Human] = [Hanna, jasmin , Sergey]

for i in HumanArray{
    i.printInfo()
}


class Car{
    var name: String
    var model: String
    var maxSpeed: Int

    func update(name: String, model:String, maxSpeed:Int){
        print("name \(name)\n model - \(model)\n maxSpeed - \(maxSpeed)")
    }

    init(name: String, model: String, maxSpeed: Int){
         self.name = name
           self.model = model
           self.maxSpeed = maxSpeed
}
    func printInfo(){
       print("Name = \(name)\nModel - \(model)\nmaxSpeed - \(maxSpeed)")
        print("update")
//        update(name: "BMW", model: "220", maxSpeed: 240)
      }
}
var BMW = Car(name: "BMW", model: "210", maxSpeed: 220)
var update = Car(name: "BMW", model: "220", maxSpeed: 240)
BMW.printInfo()
update.printInfo()

class Bank{
    var name: String
    var street: String
    var type: String
    var array1: [Client] = [Client]()
    
    init (name: String, street: String , type: String){
        self.name = name
        self.street = street
        self.type = type
    }
    func printInfo(){
        print("Name = \(name)\nStreet - \(street)\ntype - \(type)")
        for person in array1 {
            print("Имя - \(person.name) Фамилия - \(person.lastname) персоныльный номер - \(person.ID) перевод средств - \(person.perevod)")
    }
    }
        func addArray1(person: Client){
            array1.append(person)
        }
}

var mbank = Bank(name: "mbank", street: "Ibraimova123", type: "kommerz")
    mbank.printInfo()

class Client {
    var name: String
    var lastname: String
    var ID: Int
    var perevod:Int
    init (name: String, lastname: String, ID: Int, perevod: Int){
        self.name = name
        self.lastname = lastname
        self.ID = ID
        self.perevod = perevod
}
    func printInfo(){
        print("\(name), \(lastname), \(ID), \(perevod)")
    }
}
var Helen = Client(name: "Helen", lastname: "Scot", ID: 132847837, perevod: 1200)
var Rinat = Client(name: "Rinat", lastname: "Nusipaev", ID: 74837982, perevod: 7700)
     
mbank.addArray1(person: Helen)
mbank.addArray1(person: Rinat)

mbank.printInfo()
class Store{
    var name: String
    var type: String
    var loc: String
    var year: Int
    var array:[Product] = [Product]()

    init(name: String, type: String, loc: String, year: Int){
        self.name = name
        self.type = type
        self.loc = loc
        self.year = year
}
    func printInfo(){
            print("Name = \(name)\nType - \(type)\nLoc - \(loc)\nYear - \(year)")
        for product in array{
            print("товары - \(product.name) цена - \(product.cost) кол-во - \(product.shtuk)")
        }
    }
    func addArray(product: Product){
        array.append(product)
    }
}
var narodnyi = Store(name: "Народный", type: "продуктовый", loc: "в центре", year: 2015)
narodnyi.printInfo()

class Product{
    var cost: String
    var name: String
    var shtuk: Int

    init (cost: String, name: String, shtuk: Int){
        self.cost = cost
         self.name = name
         self.shtuk = shtuk
}

    func printInfo(){
        print("\(name), \(cost), \(shtuk)")

  }
}
var banan = Product(cost: "35", name: "Banan", shtuk: 3000)
var kurut = Product(cost: "10", name: "kurut", shtuk: 16000)
var AlpenGold = Product(cost: "104", name: "AlpenGold", shtuk: 12)

narodnyi.addArray(product: banan)
narodnyi.addArray(product: kurut)
narodnyi.addArray(product: AlpenGold)

narodnyi.printInfo()
