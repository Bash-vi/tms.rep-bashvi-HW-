import UIKit

//1. Написать функцию, которая:
//- Будет просто выводить в консоль ”Hello, world!”.
//- Будет принимать аргумент “имя” и выводить в консоль “Hello, имя” (вызов функции
//должен быть следующим - printHi(“Misha”)).
//- Будет принимать аргумент имя и возвращать строку приветствия “Hello! имя”.
func zadanie(_ number:Int) -> String {
   return "\nЗАДАНИЕ - \(number)\n"
    }
print(zadanie(1))


                                                                                    //greeting - приветствие
func greeting() {
    print("Hello, world!")
}
greeting()

func Hi(_ name: String) -> String {
    return "Hello, \(name)"
}
print (Hi("Misha"))

func Hi2(name: String) -> String {
    return "Hello! \(name)"
}
Hi2(name: "Natasha")









//2. Написать функцию, которая принимает две строки и возвращает сумму количества
//символов двух строк.
print(zadanie(2))                                                                   //<--- прикольно)

func sumChar(str1: String, str2: String) -> Int {
    return str1.count + str2.count
}
sumChar(str1: "deth", str2: "pool" )
print("вернул")






//3. Написать функцию, которая выводит в консоль квадрат переданного числа.
print(zadanie(3))

func squarenum(num: Int) -> String {
    return "Квадрат \(num) равен \(num * num)"
}
print(squarenum(num: 4))





//4. Создать функции, которые будут суммировать, вычитать, умножать и делить числа
//sum(num1:num2:).
print(zadanie(4))

func sum(num1: Int, num2: Int) -> Int {
    return num1 + num2
}
func subtracting(num1: Int, num2: Int) -> Int {
    return num1 - num2
}
func multiplication(num1: Int, num2: Int) -> Int {
    return num1 * num2
}
func dividing(num1: Int, num2: Int) -> Int {
    return num1 / num2
}

sum(num1: 2, num2: 4)
subtracting(num1: 9, num2: 1)
multiplication(num1: 3, num2: 3)
dividing(num1: 8, num2: 2)
print("создал")





//5. Создать функцию, которая принимает параметры и вычисляет площадь круга.   S = π × r(квадрат)
print(zadanie(5))

let pi: Double = 3.14
func areacircle(radius:Double) -> Double {
    return pi * (radius * radius)
}
areacircle(radius: 33)
print("вычеслил")





//6. Создать функцию, которая принимает логический тип “ночь ли сегодня” и возвращает
//строку с описанием времени суток.
print(zadanie(6))

func night(isItNightNow: Bool) -> String {
    return if isItNightNow == true {
        "сейчас ночь"
    } else {
        "сейчас день"
    }
}
print(night(isItNightNow: true))



func night2(hours timeNow: Int) -> String {
    return  if timeNow >= 7 && timeNow <= 10 {
        "Утро"
    } else if timeNow >= 11 && timeNow <= 17 {
        "День"
    } else if timeNow >= 18 && timeNow <= 22 {
        "Вечер"
    } else {
        "Ночь"
    }
}
print(night2(hours: 8))
print(night2(hours: 14))
print(night2(hours: 22))
print("Сейчас \(night2(hours: 2))")





//7. Создать функцию, принимающую 1 аргумент — число от 0 до 100, и возвращающую
//true, если оно простое, и false, если сложное.
print(zadanie(7))
 
let numbers = [0...100]
func simpleOrNot(numbers: Int) -> Bool {
    return if numbers % 2 > 0 {
        true
    } else {
        false}
}
simpleOrNot(numbers: )






//8. Создать функцию, принимающую 1 аргумент — номер месяца (от 1 до 12), и
//возвращающую время года, которому этот месяц принадлежит (зима, весна, лето или
//осень).
print(zadanie(8))


func months(month: Int) -> String {
    var yeartime: String
     switch month {
    case 1...2, 12:
        yeartime = "Зима"
     case 3...5:
        yeartime = "Весна"
     case 6...8:
        yeartime = "Лето"
     case 9...11:
        yeartime = "Осень"
    default:
        yeartime = "non"
         
    }
    return yeartime
}
months(month: 5)


func months1(month1: Int) -> String {
    var yeartime1: String
   switch month1 {
   case 12, 1, 2:
        yeartime1 = "Зима"
    case 3, 4, 5:
        yeartime1 = "Весна"
    case 6, 7, 8:
        yeartime1 = "Лето"
    case 9, 10, 11:
        yeartime1 = "Осень"
    default:
        yeartime1 = "non"
       }
    return yeartime1
}
months1(month1: 9)
print("вернул время года")






//9*. Создать функцию, которая считает факториал введённого числа.
print(zadanie(9))





//10*. Создать функцию, которая выводит все числа последовательности Фибоначчи до
//введённого индекса. Например fib(n:6) -> 0, 1, 1, 2, 3, 5, 8
//




//11*. Создать функцию, которая считает сумму цифр четырехзначного числа,
//переданного в параметры функции
