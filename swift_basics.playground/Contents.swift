import UIKit

//: Functions

func foo() -> Int {
    return 2
}

func say1(p: String) {
    print(p)
}

say1(p: "Hello World")

func say2(phrase p: String) {
    print(p)
}

say2(phrase: "Phrase")

func say3(_ p: String) {
    print (p)
}

say3("NOo")

func sum(lhs: Int, rhs: Int) -> Int {
    return lhs + rhs
}

print(sum(lhs: 1, rhs: 2))

func sub(lhs: Int = 0, rhs: Int = 0) -> Int {
    return lhs - rhs
}

print(sub())
print(sub(lhs: 1))
print(sub(lhs: 3, rhs: 1))

func two(a: Int) -> String? {
    guard a == 2 else {
        return nil
    }
    return "Two"
}

//: Optionals

/*
    Константы и переменные могут быть optional - то есть иметь значения не всегда
    И non-optional - то есть иметь значения всегда
 */

// Non-optional
var thing: String = "hi"

//Optional
var another: String? = nil
another = "World"

var v = UIView()
let fr = v.frame
/*
    Когда мы говорим об optional, мы не можем получить напрямую значение, потому что
    строго говоря optional - есть некоторая структура-обертка над типом
 */

// Синтаксический сахар
var vo: UIView? = UIView()
// Эквивалетна вот такой
var vo1: Optional<UIView>

// Извлечение какого - либо значения с проверкой на присутствие данного значения
var frx = vo?.frame

// Извлечение какого - либо значения без проверки (Если значение есть - мы получим его
// без оборачивания его в структуру Optional - такое действие называется Force
// unraping optionals - явное разыменование Optional)
var fry = vo!.frame

// Пример плохого использования FUO:
var num1: Int? = nil
var num2: Int = 2

var f1 = num1
var f2 = num2
// Когда мы делаем FUO мы должны быть уверены, что у нас есть какое - либо значени в view1
// Но его нет и произойдет краш приложения
// var fx1 = view1!.frame
var fx2 = num2

// Избегание подобных ситуаций
if let num1 = num1 {
    num1 + num2
}

num2 + (num1 ?? 0)

// Пример работы guard как упрощение кода:

func getFrame(view: UIView?) -> CGRect {
    guard let view = view else {
        return .zero
    }
    return view.frame
}

func getFrameBad(view: UIView?) -> CGRect {
    if let view = view {
        return view.frame
    } else {
        return .zero
    }
}

print("hello")

//: OOP
/// Struct

struct Point {
    var x: Int
    var y: Int
}


/// Class

class SPoint {
    
    private
        var x: Int
        var y: Int
    
    public
        init() {
            self.x = 0
            self.y = 0
            print("class point initialized")
        }
        func getX() -> Int {
            return self.x
        }
}

var pointS =  SPoint()

print(pointS.getX())


