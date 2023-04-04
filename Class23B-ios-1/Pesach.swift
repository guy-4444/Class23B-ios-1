import Foundation


class Closures {
    
    
    func start() {
        
        var result = 0
        
        result = calc(a: 4, b: 3, action: sub(a:b:))

        result = calc(a: 4, b: 3, action: {(a: Int, b: Int) -> Int in
            return a - b
        })

        result = calc(a: 4, b: 3, action: {(a, b) -> Int in
            return a - b
        })
        
        result = calc(a: 4, b: 3, action: {(a, b) in
            return a - b
        })
        
        result = calc(a: 4, b: 3, action: {(a, b) in
            a - b
        })
        
        result = calc(a: 4, b: 3, action: {(a, b) in a - b })
        
        result = calc(a: 4, b: 3, action: { $0 - $1 })
        
        
        result = mn(n: 100, action: { $0 + 1})
        
        print("- - - - - - - -\n\n")
        print("Result: \(result)")
        print("\n\n- - - - - - - -")
        
        
        
        
        
    }
    
    
    func mn(n :Int, action: (Int) -> Int) -> Int {
        return action(n)
    }
    
    func calc(a: Int, b: Int, action: (Int, Int) -> Int) -> Int {
        return action(a, b)
    }
    
    func sub(a: Int, b: Int) -> Int {
        return a - b
    }
    
    func add(a: Int, b: Int) -> Int {
        return a + b
    }
    
    func mult(a: Int, b: Int) -> Int {
        return a * b
    }
    
    func superAdd(a: Int, b: Int, c: Int) -> Int {
        return a + b + c
    }
}







class Arrays {
    
    
    func start() {
        
        let arr: [Int] = []
        var arr2 = [Int]()
        var ar = Array.init(repeating: 0, count: 10)

        for _ in 0..<arr.count {
            print("Hi")
        }
        
        
        for i in 0..<ar.count {
            ar[i] = i
        }
        print(ar)
        
        let ar2 = ar.map { $0 - 1 }
        print(ar2)

        
        let ar3 = Array(0..<10)
        print(ar3)
        
        let ar4 = Array(stride(from: 0.0, through: 2.0, by: 0.1))
        print(ar4)
        
        
        var y = 4.0
        y = y / 3.3
        y = y * 3.3
        print(y)

    }
    
    func getZeros(size: Int) -> [Int] {
        return Array.init(repeating: 0, count: size)
    }
}
