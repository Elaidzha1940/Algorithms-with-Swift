import UIKit

// Big O Notation — это способ оценки зависимости количества операций, выполняемых процессором, от числа элементов данных.

// O(n) обозначает, что количество операций линейно зависит от количества элементов данных.
// O — количество операций, которое потребуется для выполнения алгоритма.
// n — количество элементов, с которыми работает алгоритм.

// O(1) - Единичная (константная) сложность

func getSquareFor(index: Int, in array: [Int]) -> Int? {
    guard index < array.count else { return nil }
    let value = array[index]
    return value * value
}

//getSquareFor(index: 2, in: [1,2,3,4,5])

// O(n) - Линейная сложность

func sum(array: [Int]) -> Int {
    var sum = 0
    array.forEach { sum += $0 }
    return sum
    
    //    for num in array {
    //        sum += num
    //    }
    
    //    array.forEach { num in
    //        sum += num
    //    }
}

// O(2*n)
func sum(array: [Int]) -> (Int, Int) {
    var sum = 0
    var mult = 1
    array.forEach { sum += $0 }
    
    array.forEach { num in
        mult *= num
    }
    
    return (sum, mult)
}
