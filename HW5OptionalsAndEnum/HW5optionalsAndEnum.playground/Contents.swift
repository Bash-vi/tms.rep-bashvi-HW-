//1. Создать enum с временами года.

enum seasons {
   case Spring
    case Summer
    case Fall
    case Winter
    case nonseasons
}

enum Barcode {
    case upc(Int, Int, Int, Int)
    case qrCode(String)
}

// Перечисления типа Barcode, которое берет два значения, одно из которых upc, с ассоциативным значением типа (Int, Int, Int, Int) и значение qrCode с ассоциативным значением типа String

enum blankets: Int {
    case GreyCats = 885909512263 // <- типо штрих-код
    case Corgi
    case Shine
    case Flisse155A
    case Morocco
}





//2. Написать функцию, которая будет принимать номер месяца (Int) и возвращать enum
//с временем года этого месяца.

func months1(month1: Int) -> seasons {
    guard month1 > 0 && month1 <= 12 else {return seasons.nonseasons}
    return switch month1 {
   case 12, 1, 2:
       seasons.Winter
    case 3, 4, 5:
       seasons.Spring
    case 6, 7, 8:
       seasons.Summer
    case 9, 10, 11:
       seasons.Fall
    default:
        seasons.nonseasons
       }
}
months1(month1: 9)
months1(month1: 3)
months1(month1: 11)
months1(month1: 6)
months1(month1: 222)






//3.Написать метод, который принимает variadic parameter String?. Метод возвращает
//количество nil объектов и печатает в консоль одну строку всех объединенных не nil
//объектов.

func yesNilCount(_ somestr: String?...) -> Int {
    var yesNil = 0
    var noNil: String = String()
    for str in somestr {
        if let str = str{
            noNil += str
        } else {
            yesNil += 1
        }
    }
    print(noNil)
    return yesNil
}
var opt: String? = nil
var opt1: String?
yesNilCount(opt, "vo", nil, "kak", "rabotaet", nil, nil, opt1, "!")



// Optionals

//
//let firstName1: String? = "Freddie"
//let lastName1: String? = "Mercury"
//let passportID1: String? = nil

//let lastName: String? = nil

//if lastName != nil {
//    print(lastName!)
//}
//Mercury


////Значение в optionalInt было nil, обрабатываем логику при nil значении.В данном случае сработает код в блоке else
//let firstName: String = "Freddie"
//let lastName: String = "Mercury"
//var passportID: String?
//if let unwarpPassportID = passportID {
//    print("Пассажир \(firstName) \(lastName) с номером пасспорта \(unwarpPassportID) купил билет на самолет")
//} else {
//    print("Пассажир \(firstName) \(lastName) без номера пасспорта не может купть билет на самолет")
//}


    
//В данном случае сработает код в блоке if let …, unwarpPassportID будет иметь значение "AB33392025"
//let firstName: String = "Freddie"
//let lastName: String = "Mercury"
//var passportID: String? = "AB33392025"
//if let unwarpPassportID = passportID {
//    print("Пассажир \(firstName) \(lastName) с номером пасспорта \(unwarpPassportID) купил билет на самолет")
//} else {
//    print("Пассажир \(firstName) \(lastName) без номера пасспорта не может купть билет на самолет")
//}

//// Так как у нас получилось получить значение, то блок else не сработает

var firstName: String? = "Freddie"
func unwgreeting(firstName: String?) {
    guard let unwrpfirstName = firstName else {
        print("Введите имя")
        return
    }
    print("Добро пожаловать \(unwrpfirstName)")
}
unwgreeting(firstName: firstName)

var ticcets: Int? = 5
let unwrpticcets = (ticcets ?? 1)
if unwrpticcets > 1 {
    print("купил \(unwrpticcets) билетов")
} else {
    print("купил \(unwrpticcets) билет")
}

func air(TO: String? = nil) {
    //TO: Optional
}
air(TO:"нужно пройти техобслуживание") // будет "нужно пройти техобслуживание"
air() // будет nil

