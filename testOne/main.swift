//
//  main.swift
//  testOne
//
var completionHandlers: [() -> Void] = []
func someFunctionWithEscapingClosure(completionHandler: @escaping () -> Void) {
  completionHandlers.append(completionHandler)
}

func someFunctionWithNonescapingClosure(closure: () -> Void) {
    closure()
}
 
//class SomeClass {
    var x = 10
    func doSomething() {
        someFunctionWithEscapingClosure { x = 100 }
        someFunctionWithNonescapingClosure { x = 200 }
    }
//}
 
//let instance = SomeClass()
//instance.doSomething()
doSomething()

print(x)
