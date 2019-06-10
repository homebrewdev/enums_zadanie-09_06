//
//  main.swift
//  enums
//
//  Created by tiger on 07.06.2019.
//  Copyright © 2019 homework. All rights reserved.
//

import Foundation
// работаем с перечислениями Enum
// создадим перечисление времен года
enum Season {
    case Winter, Spring, Summer, Autumn
}

//let now: Season = .Spring
// или можно
let now = Season.Spring

switch (now){
    
case .Winter:
    print("Зима")
case .Spring:
    print("Весна")  // в консоль выведет - Весна
case .Summer:
    print("Лето")
case .Autumn:
    print("Осень")
}

enum DayOfWeek: Int{
    
    case Monday=1, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday
}

var currentDay = DayOfWeek.Wednesday
print(currentDay)   // Wednesday
print(currentDay.rawValue)  // 3

// решение задачи с enum 0 ..9
enum myEnum: Int {
    case Zero = 0, One, Two, Three, Four, Five, Six, Seven, Eight, Nine
    
    func getCurrentRussianNumber() -> String{
        
        return myEnum.getNumberRussianDescription(number: rawValue)
    }
    
    static func getNumberRussianDescription(number: Int) -> String {
        switch number{
            
        case 0:
            return "Ноль"
        case 1:
            return "Один"
        case 2:
            return "Два"
        case 3:
            return "Три"
        case 4:
            return "Четыре"
        case 5:
            return "Пять"
        case 6:
            return "Шесть"
        case 7:
            return "Семь"
        case 8:
            return "Восемь"
        case 9:
            return "Девять"
        default:
            return "Неопределенное число"
        }
    }
}

var someNum: myEnum = myEnum.Five // Five
print(someNum) // Five
print(someNum.getCurrentRussianNumber())  // Пять

// создаем множество
var mySet = Set<myEnum>()

var someNumOne: myEnum = myEnum.One
// добавляем в множество несколько myEnum
mySet.insert(someNum)
mySet.insert(someNumOne)


// создаем Dictionary
var Dict: Dictionary<myEnum, Int>

// классный пример на функции из swiftbook
func minMax(array: [Int]) -> (min: Int, max: Int)? {
    if array.isEmpty { return nil } // если массив пустой, то нил
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array[1..<array.count] {
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}

if let bounds = minMax(array: [4, -25, 35, 120, 7, 71]) {
    print("минимальное число: \(bounds.min) максимальное число \(bounds.max)")
}

var arr: Array<Int> = [1, 5, 7, 9]
for a in arr {
    print("a = \(a) index =")
}

