# Мини конспект по работе с optionals (опционалы) и зачем он нужен
---
```swift

```
**Optionals** (опционалы) — это удобный механизм обработки ситуаций,
когда значение переменной может отсутствовать. Значение будет
использовано, только если оно есть.
Чтобы объявить опциональную переменную, мы должны использовать
специальный синтаксис, который содержит знак вопроса (?) при
объявлении. Для обозначения пустого значения, используется ключевое
слово nil.

```swift
var optional: Int?
let firstName: String? = "Freddie"
let lastName: String? = "Mercury"
let passportID: String? = nil
```
Опциональный тип подразумевает, что возможны два варианта: или значение есть, и его можно извлечь из опционала, либо его вообще нет.

>*Если вы хотите получить доступ к значению опциональной переменной или константы, вам необходимо ее извлечь.*

# Извлечение опционалов
---
### 1. Force unwrap (принудительное извлечение)
Когда мы используем опционал, то потенциально, при неправильном
извлечении значения, мы рискуем получить аварийное завершение
работы нашего приложения (crash). Это случается только тогда, когда
мы используем принудительное извлечение опционала force unwrap,
а значение переменной nil.

Рассмотрим принудительное извлечение опционала:
```swift
let lastName: String? = "Mercury"

if lastName != nil {
    print(lastName!)
}
//Mercury
```
Если lastName будет иметь значение nil, код в фигурных скобках не будет запущен:

```swift
let lastName: String? = nil

if lastName != nil {
    print(lastName!)
}
```
Если мы не проверим lastName значение и все равно используем принудильное извлечение, ваше приложение упадет и предупредит вас о фатальной ошибке :

```swift
let lastName? = nil 
    print(lastName!)

Fatal error: Unexpectedly found nil while unwrapping an Optional value
```
Поэтому развертывать опционал через force unwrap нельзя.

### 2. Cвязывание c конструкцией if let.
Значение в  было nil, обрабатываем логику при nil значении.В данном случае сработает код в блоке else:
```swift
let firstName: String = "Freddie"
let lastName: String = "Mercury"
var passportID: String?
if let unwarpPassportID = passportID {
    print("Пассажир \(firstName) \(lastName) с номером пасспорта \(unwarpPassportID) купил билет на самолет")
} else {
    print("Пассажир \(firstName) \(lastName) без номера пасспорта не может купть билет на самолет")
}//Пассажир Freddie Mercury без номера пасспорта не может купть билет на самолет
```
В данном случае сработает код в блоке if let …, unwarpPassportID будет иметь значение "AB33392025":
```swift
let firstName: String = "Freddie"
let lastName: String = "Mercury"
var passportID: String? = "AB33392025"
if let unwarpPassportID = passportID {
    print("Пассажир \(firstName) \(lastName) с номером пасспорта \(unwarpPassportID) купил билет на самолет")
} else {
    print("Пассажир \(firstName) \(lastName) без номера пасспорта не может купть билет на самолет")
}//Пассажир Freddie Mercury с номером пасспорта AB33392025 купил билет на самолет
```
Так как у нас получилось получить значение, то блок else не сработает
### 3.Cвязывание c конструкцией Guard let
Guard let схож с if let. Мы также создаем новую константу при успешном
извлечении опционала. Основное различие между if let и guard let
заключается в том, что ваш развернутый опционал будет доступнен для
использования после guard let кода. А если у guard let не получится извлечь
опционал, то сработает код внутри блока guard, например:
```swift
var firstName: String? 
func unwgreeting(firstName: String?) {
    guard let unwrpfirstName else {
        print("Введите имя")
        return
    }
    print("Добро пожаловать \(unwrpfirstName)")
}
//Введите имя
```
Так как firstName = nil, то код после guard не сработает и выведет строку "Введите имя", так как мы написали оператор досрочного выхода return.
```swift
var firstName: String? = "Freddie"
func unwgreeting(firstName: String?) {
    guard let unwrpfirstName else {
        print("Введите имя")
        return
    }
    print("Добро пожаловать \(unwrpfirstName)")
}
//Добро пожаловать Freddie
```
код ниже будет работать, и мы сможем обращаться к новой константе unwrpfirstName, которая имеет значение "Freddie".
### 4. Nil coalescing operator
суть данного оператора в том, что если опциональная перенная равна nil, то в программе будет использоваться значение которое подставлено после "??", например:

```swift
var ticcets: Int?
let unwrpticcets = (ticcets ?? 1)
if unwrpticcets > 1 {
    print("купил \(unwrpticcets) билетов")
} else {
    print("купил \(unwrpticcets) билет")
}
//купил 1 билет
```
Выше в примере видим, что перенная равна nil, следовательно используется значение которое подставлено после "??". В примере ниже дадим опционалу значение:
```swift
var ticcets: Int? = 5
let unwrpticcets = (ticcets ?? 1)
if unwrpticcets > 1 {
    print("купил \(unwrpticcets) билетов")
} else {
    print("купил \(unwrpticcets) билет")
}
//купил 5 билетов
```
### 5. Использование в параметрах метода
Мы можем указать дефолтные параметры метода через “=“ после
объявления параметра.
В такой реализации мы можем либо передать значение в параметр,
либо мы можем просто вызвать метод без передачи значения в
параметры, просто вызвав метод без аргументов, тогда внутри
метода параметр bar будет иметь значение nil.
```swift
func air(TO: String? = nil) {
    //TO: Optional
}
air(TO:"нужно пройти техобслуживание") // будет "нужно пройти техобслуживание"
air() // будет nil
```