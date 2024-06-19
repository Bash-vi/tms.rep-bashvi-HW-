import UIKit
func zadanie(_ num: Int){
    print("\nЗадание №\(num)\n")
}
//1.Создайте два массива. Первый от 0 до 14, второй от 14 до 30. Объедините их в один
//массив.
zadanie(1)

let array014 = [Int](0...14)
let array1430 = [Int](14...30)
let array030 = array014 + array1430
print(array030)

//2.Создать функцию, которая принимает массив int. Возвести все Int в квадрат.
//Возвратить новый массив.
zadanie(2)

func kvadrat(someint:[Int]) -> [Int] {
    var squareint: [Int] = []
    for num in someint {
        let squrenum = num * num
        squareint.append(squrenum)
    }
    print(squareint)
    return squareint
}
kvadrat(someint: [2, 3, 4, 5])

//3.Создать функцию, которая принимает массив int. Возвратить новый массив с только
//четными элементами.
zadanie(3)

func chetnoe(somenum: [Int]) -> [Int] {
    var chetnoe = [Int]()
    for num in somenum {
        if num % 2 == 0 {
            chetnoe.append(num)
        }
    }
    print(chetnoe)
    return chetnoe
}
chetnoe(somenum: [11,23,22,44,55,4])

//4.Написать 3 примера с использованием .map
zadanie(4)

let somenum = [Int](1...9)
let square = somenum.map({$0 * $0})
print(square)

let aLotOne = somenum.map({$0 / $0})
print(aLotOne)

//5.Написать 2 примера с использованием .filter
zadanie(5)

let somenum1 = [Int](1...50)
let nechetnoe = somenum1.filter({$0 % 2 == 1})
print(nechetnoe)

let five = somenum1.filter({$0 % 5 == 0})
print(five)

let fotyfive = somenum1.filter({$0 >= 40 && $0 <= 45 })
print(fotyfive)

//6.Написать 2 примера с использованием .compactMap
zadanie(6)

let numbers = ["5", "42", "hodor", "99", "stark"]
let result = numbers.compactMap({ Int($0) })
 print(result)


let optarray: [Int?] = [nil, 4, 5, nil]
let numbers5 = optarray.compactMap { $0 }
print(numbers5)

//7.Написать 2 примера с .sort
zadanie(7)

var somestring = ["nel", "rw", "qqqq", "i"]
var somenumb = [22, 55, 6, 18, 94, 1, 78, 69]
somenumb.sort()
print(somenumb)
somenumb.sort(by: > )
print(somenumb)
somestring.sort {$0.count < $1.count}
print(somestring)

//8.Написать 2 примера с .sorted
zadanie(8)
let somestring1 = ["nel", "rw", "qqqq", "i"]
let somenumb1 = [22, 55, 6, 18, 94, 1, 78, 69]
let sortnum = somenumb1.sorted()
print(sortnum)
let sortnum1 = somenumb1.sorted(by: > )
print(sortnum1)
let sortstr = somestring1.sorted {$0.count < $1.count}
print(sortstr)



