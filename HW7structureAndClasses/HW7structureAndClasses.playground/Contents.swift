import UIKit


//Создать объект “Школа” со свойствами: массив учеников, название школы, адрес (адрес -
//новый объект с координатами x, y, street name) и директор (у директора новые поля:
//experience, рейтинг. Директор наследуется от класса Person (name:surname:age)).
//


//У ученика хранить имя, фамилию, номер класса, кортеж “название предмета - оценка”. Ученик
//наследуется от Person.
//


//У ученика сделать конструктор со всеми параметрами, добавить дефолтные значения к
//некоторым из них.
//


//Написать метод для ученика, выводящий информацию о студенте в формате
//“Фамилия Имя (Класс)
//предмет: оценка
//предмет: оценка”.
//


//Написать метод для школы, который выводит информацию о школе.

class Person {
    var name: String
    var surname: String
    var age: Int
    init(name: String, surname: String, age: Int) {
        self.name = name
        self.surname = surname
        self.age = age
    }
}

struct School {
    var students = [String]()
    let nameSchool = "School terapii i relaxa"
    
    
    func schoolinfo() -> String {
    let sinf = "\nНазвание школы: \(nameSchool)/n"
    print(sinf)
        return sinf
    }

}

struct AdressSchool {
    let x = 199.388
    let y = 901.123
    let streetname = "prospect Makarova 10"
    
    func schadr() -> String {
        
    let sinf = "Адрес: \(streetname)\nКоординаты x:\(x), y:\(y)"
    print(sinf)
        return sinf
    }
}

class Director: Person {
    var experience: String
    var rating: String
    init(experience: String, 
         rating: String,
         name: String,
         surname: String,
         age: Int
    ) {
        self.experience = experience
        self.rating = rating
        super.init(name: name, surname: surname, age: age)
    }
}

        


class Student: Person {
    var classnum: Int
    let subjectstudied = ("math", 4)
    let subjectstudied1 = ("himia", 3)
    let subjectstudied2 = ("fizica", 5)
    let infoschool = School()
    let infoadr = AdressSchool()
    init(classnum: Int,
         name: String,
         surname: String,
         age: Int
    ) {
        self.classnum = classnum
        super.init(name: name, surname: surname, age: age)
    }
    func studinfo() -> String {
        let str = "\(name) \(surname) ( \(classnum) )\n\(subjectstudied.0): \(subjectstudied.1)\n\(subjectstudied1.0): \(subjectstudied1.1)\n\(subjectstudied2.0): \(subjectstudied2.1)"
        print(str)
        return str
    }
    
    func fulladr() -> String {
        let strAddr = "\(infoschool.schoolinfo()) \(infoadr.schadr())"
        return strAddr
    }
}
let stud: Student = .init(classnum: 9, name: "Piter", surname: "Parker", age: 15)
stud.studinfo()

//let infoschool = School()      <--- понял как
//infoschool.schoolinfo()
//let infoadr = AdressSchool()
//infoadr.schadr()

stud.fulladr()

