import UIKit

/*
 
 //A: Can be assigned to a variable

 1. Closure which takes no argument and return no value
 2. Closure which takes one argument and return no value
 3. Closure which takes 2 arguments and return no value
 4. Closure which takes 2 arguments and return a value
 */

// 1. Closure which takes no argument and return no value
let emptyClosure: () -> Void = {
    print("emptyClosure: Hollow world")
}
emptyClosure()

//2. Closure which takes one argument and return no value
let oneParamClosure: (Int) -> Void = { value in
    print("oneParamClosure: Result: \(value)")
}
oneParamClosure(5)

//3. Closure which takes 2 arguments and return no value
let sum: (Int, Int) -> Void = { (value1, value2) in
    print("twoParamsClosure: Sum: \(value1 + value2)")
}
sum(10, 40)

//4. Closure which takes 2 arguments and return a value
let caluculateSum: (Int, Int) -> Int = { (value1, value2) in
    return value1 + value2
}
print("twoParamsClosureWithReturn: Sum:", caluculateSum(40, 60))

/*
 //B: Can be used as function argument

 1. Closure passed to a function takes no argument and return no value
 2. Closure passed to a function takes one params and return no value
 3. Closure passed to a function takes 2 params and return no value
 */

//1. Closure passed to a function takes no argument and return no value

// Function which takes an empty closure as parameter.
func printMeAfter1Second(value: () -> Void) {
    sleep(1)
    value()
}

// Run
printMeAfter1Second {
    print("Hollow world")
}

//2. Closure passed to a function takes one params and return no value
func calculateSumOf(value1: Int, value2: Int, result: (Int) -> Void) {
    print("sum of \(value1) + \(value2) = ", terminator: "")
    result(value1 + value2)
}

calculateSumOf(value1: 10, value2: 40) { result in
    print(result)
}

//3. Closure passed to a function takes 2 params and return no value
func multiply(value1: Int, value2: Int, result: (Int, Int) -> Void) {
    print("multiplication of \(value1) * \(value2) = ", terminator: "")
    result(value1, value2)
}

multiply(value1: 10, value2: 40) { value1, value2 in
    print(value1 * value2)
}

// 3: Returned from a function: Nested functions
func makeIncrementer(incrementAmount: Int) -> (Int) -> Int {
    func incrementer(number: Int) -> Int {
        return number + incrementAmount
    }
    return incrementer
}

let incrementerOf5 = makeIncrementer(incrementAmount: 5)
let result = incrementerOf5(5)
print("result: \(result)")


// Bonus Learning:

let numbers = [1, 2, 3, 4, 5]
let doubles = numbers.map { number in
    number * 2
}
let cubes = numbers.map {$0 * $0 * $0}
print(numbers, doubles, cubes)




