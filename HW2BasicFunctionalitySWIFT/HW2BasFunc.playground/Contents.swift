import UIKit

//2. Написать переменные и константы всех базовых типов данных: Int, Bool, Float,
    //Double, String. У чисел вывести их минимальные и максимальные значения (Int8/16…
    //UInt…), а у строки – количество символов.
let m: Int = 8
let n: Int = 3
let p: Int = 5
let o: Double = 7.342345
let i: Double = 3.79
let u: Double = 5.98866
let y: Float = 4.494
let t: Float = 2.557
let r: Float = 6.346
let stringprim: String = "Grom i molniya"
print(o)

var isboxopen: Bool = true
isboxopen = false

var fructs = "orange"
fructs = "lemon"

print("max - Int = \(Int.max) Int8 = \(Int8.max) int16 = \(Int16.max) Int32 = \(Int32.max) int64 =\(Int64.max)")
print("min - Int = \(Int.min) Int8 = \(Int8.min) int16 = \(Int16.min) Int32 = \(Int32.min) int64 =\(Int64.min)")
print("max - UInt = \(UInt.max) Int8 = \(UInt8.max) int16 = \(UInt16.max) Int32 = \(UInt32.max) int64 =\(UInt64.max)") //UInt беззнаковое число(положительное)
print("min - Int = \(UInt.min) Int8 = \(UInt8.min) int16 = \(UInt16.min) Int32 = \(UInt32.min) int64 =\(UInt64.min)")

print("Кол-во символов - \(stringprim.count)")         //с помощью свойства .count получаем количество сиволов в строке/на массивы тоже работает


//3. Написать различные выражения с приведением типа. Минимум 8 выражений.

let e: Int = Int(o)
let w: Double = Double(y)
let w1: Double = Double(t)
let q: Float = Float(u)
let q1: Float = Float(p)
var l: Int = Int(r)
var k: Int = Int(y)
let st1: String = String(p)
let st2: String = String(i)
let st3: String = String(t)

//4. Произвести различные вычисления с математическими операторами (умножение,
    //деление, сложение, вычитание). Выводить результат в консоль в таком виде: 3
    //+ 2 = 5 (использовать интерполяцию строк).

var sum = "\(p) + \(p) = \(p + p)"
sum = "\(r) + \(t) = \(r + t)"
sum = "\(p) - \(p) = \(p - p)"
sum = "\(o) - \(i) = \(o - i)"
sum = "\(o) * \(i) = \(o * i)"
sum = "\(p) * \(p) = \(p * p)"
sum = "\(p) / \(p) = \(p / p)"
sum = "\(r) / \(t) = \(r / t)"

//5. С помощью if-else необходимо вывести в консоль, ночь ли сегодня (isNight).

var time = 12
time = 13
time = 23

if time <= 6 || time >= 23 {
    print("isnight")
} else {
    print("notisnight")
}


var isnight = false
isnight = true
if isnight {
    print("сейчас ночь")
} else {
    print("сейчас не ночь")
}


//6. Дана строка, сделать копию этой строки. Вывести копию строки в консоль. Помним,
    //что строка – это коллекция символов, по которым можно "пробегаться". Решение let
    //str2 = str1; print(str2) не принимается.

let str1 = "FUNNY"
for funny in str1 {
    print(funny)
}

let list = ["F","U","N","N","Y"]
for word in list {
    print(word)
}

//7*. Сделать проверку: является ли число четным: 13, 2, 20, 21, 76.

let list1 = [13,2,20,21,76]
for numbers in list1 {
    if numbers % 2 > 0 {
        print("нечетное")
    } else {
        print("чётное")
            }
        }

var chislo1 = 13 % 2
var chislo2 = 2 % 2
var chislo3 = 20 % 2
var chislo4 = 21 % 2
var chislo5 = 76 % 2

if chislo1 > 0 {
    print("nechetnoe")
} else {
    print("CHETNOE")
}
if chislo2 > 0 {
    print("nechetnoe")
} else {
    print("CHETNOE")
}
if chislo3 > 0 {
    print("nechetnoe")
} else {
    print("CHETNOE")
}
if chislo4 > 0 {
    print("nechetnoe")
} else {
    print("CHETNOE")
}
if chislo5 > 0 {
    print("nechetnoe")
} else {
    print("CHETNOE")
}

//8*. В переменной day лежит какое-то число от 1 до 31 (вы задаете сами любое).
    //Определить, в какую декаду месяца попадает это число (в первую, вторую или
    //третью).


var day1:Int = 22
day1 = 11
day1 = 3
if  day1 <= 10 {
    print("1 dekada")
} else if day1 >= 11 && day1 <= 20 {
    print("2 dekada")
} else if day1 >= 21 && day1 <= 31 {
    print("3 dekada")
}



var day = 11
day = 24
day = 17

var dekada: String
switch day {
case 1...10:
    dekada = "I"
case 11...20:
    dekada = "II"
case 21...31:
    dekada = "III"
default:
    dekada = "NON"
}
print("\(dekada) - Декада")



    
    
//9*. Дана строка, состоящая из символов, например, “bbppeeyy”
    //. Проверить, что
    //первым символом этой строки является буква “a” (или любая другая). Если это так –
    //вывести 'да', в противном случае -
    //‘нет’
    //. Затем поменяйте строку, чтобы условие
    //соблюдалось. Поэкспериментируйте с разными строками.

var string = "cbesssew"
string = "sfkegey"
if string.first == "s" {
    print("yes")
} else {
    print("no")
}

                                        //что-то родил



//10*. Вывести таблицу умножения в консоль с помощью циклов for in.


let list4 = 0...9                                                           //диапазон удобно
let list5 = [1,2,3,4,5,6,7,8,9]
for number3 in list5 {
    for number2 in list5 {
        print(number3, "*", number2, "=", (number3) * (number2))
    }
}

for number3 in list4 {
    for number2 in list4 {
        print(number3, "*", number2, "=", (number3) * (number2))
    }
}



// написал код для проекта


let pn:Int = 1
let wt = 2
let sr = 3
let cht = 4
let pt = 5
let weeknd = 6

var dni = "Среда"
dni = "Четверг"

var numweek: Int
switch dni {
case "Понедельник":
    numweek = weeknd - pn
case "Вторник":
    numweek = weeknd - wt
case "Среда":
    numweek = weeknd - sr
case "Четверг":
    numweek = weeknd - cht
case "Пятница":
    numweek = weeknd - pt
default:
    numweek = weeknd - weeknd
}
 print("\(dni) - дней до выходного - \(numweek) ")
