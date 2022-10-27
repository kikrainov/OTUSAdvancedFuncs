import UIKit

/*
 Напишите несколько примеров и функций:

 Функция, принимающая функцию как параметр
 Функция с несколькими замыканиями
 Функция с autoclosure
 Использование внутренних функций
 Дженерик-функция с условием
 В Playground добавьте пример для демонстрации работы.
 */

/* Функция, принимающая функцию как параметр */
func workWithFuncAsAParameter(funcParameter: ((Int, Int) -> Int)) {
    print("Hey, I use a closure as a parameter")
}

/* Функция с несколькими замыканиями */

func someFunctionThatTakesAClosure(closure1: () -> Void, closure2: () -> Void) {
   print("Hey, I use two closures")
}

/* Функция с autoclosure */



/* Использование внутренних функций */
// Вложенные функции
func comparePerimeters(length1: Double, width1: Double, length2: Double, width2: Double){
     
    func perimeter(a: Double, b: Double) -> Double{
        return 2 * (a + b)
    }
     
    let perimeter1 = perimeter(a: length1, b: width1)
    let perimeter2 = perimeter(a: length2, b: width2)
     
    print("разница периметров:", (perimeter1 - perimeter2))
}
 
comparePerimeters(length1: 638, width1: 240, length2: 50, width2: 10)

// Рекурсия
func countFactorial(with param: Int) -> Int {
    if param == 0 {
        return 1
    }
    return param * countFactorial(with: param - 1)
}

var y = countFactorial(with: 5)


/* Дженерик-функция с условием */
