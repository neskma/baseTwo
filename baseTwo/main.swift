//
//  main.swift
//  baseTwo
//
//  Created by Dmitry on 21.10.2021.
//

import Foundation



//1. Функция четное/нечетное
var numbers = [357, 856, 353, 785, 354, 8654, 463]
for sorting in numbers{
    if sorting % 2 == 0 {
        print("\(sorting) четное")
    } else {
        print("\(sorting) нечетное")
    }
}

//2. Функция на деление на 3
for sortingTwo in numbers{
    if sortingTwo % 3 == 0 {
        print("\(sortingTwo) делится на 3")
    } else {
        print("\(sortingTwo) не делится на 3")
    }
}

//3. Возврастающий массив из 100 чисел.
var oneHundred = [Int] ()
for number in 1...100{
    oneHundred.append(number)
}
print(oneHundred)

//4. Удалить из массива четных и которые не делятся на 3
var del = oneHundred.filter {$0 % 2 != 0 && $0 % 3 == 0}
   print(del)

//5. Функция на новое число Фибоначчи и добавить 100 элементов
func fibonacci(_ n: Int) -> [Double] {
    var fibonacci: [Double] = [0, 1]
    (2...n).forEach{ fiboNum in
        fibonacci.append(fibonacci[fiboNum - 1] + fibonacci[fiboNum - 2])
    }
    return fibonacci
}
print(fibonacci(100))

//6. Заполнить массив простыми числами. Натуральное число, большее единицы
func easyNumbers(arrayPassed: [Int]) -> [Int] {
    var easyNum: [Int] = []
    var newArr = arrayPassed
    while let newP = newArr.first {
        easyNum.append(newP)
        newArr = newArr.filter { $0 % newP != 0 }
    }
    return easyNum
}
print(easyNumbers(arrayPassed: Array(2...100)))
