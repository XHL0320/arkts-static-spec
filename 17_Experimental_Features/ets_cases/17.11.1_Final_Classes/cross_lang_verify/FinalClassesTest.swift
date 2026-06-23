/**
 * Swift cross-language verification for ArkTS 17.11.1 Final Classes
 *
 * Swift supports `final class` with identical semantics:
 * - A final class cannot be subclassed (compile-time error)
 * - Methods in a final class cannot be overridden (since no subclassing possible)
 * - `final` on methods in non-final classes prevents overriding in subclasses
 */

// Test 1: Final class (identical to ArkTS)
final class FinalClassSwift {
    var id: Int
    var name: String

    init(id: Int, name: String) {
        self.id = id
        self.name = name
    }

    func getId() -> Int {
        return id
    }

    func getName() -> String {
        return name
    }
}

// Test 2: Protocol (interface) conformance by final class
protocol CalculatorProtocol {
    func compute(val: Int) -> Int
}

final class FinalCalculatorSwift: CalculatorProtocol {
    var multiplier: Int

    init(mult: Int) {
        self.multiplier = mult
    }

    func compute(val: Int) -> Int {
        return val * multiplier
    }
}

// Test 3: Non-final class with final method
class NonFinalBaseSwift {
    final func compute() -> Int {
        return 100
    }
}

// This would be a COMPILE ERROR in Swift:
// class NonFinalDerivedSwift: NonFinalBaseSwift {
//     override func compute() -> Int { return 200 }  // ERROR: instance method overrides a 'final' instance method
// }

// This would be a COMPILE ERROR in Swift:
// class AttemptExtend: FinalClassSwift {}  // ERROR: inheritance from a final class

// Test execution
func testFinalClasses() {
    // Test 1: Final class instantiation
    let obj1 = FinalClassSwift(id: 1, name: "test")
    assert(obj1.getId() == 1, "Expected id 1, got \(obj1.getId())")
    assert(obj1.getName() == "test", "Expected name test, got \(obj1.getName())")

    let obj2 = FinalClassSwift(id: 2, name: "second")
    assert(obj2.getId() == 2, "Expected id 2")

    // Test 2: Final class through protocol dispatch
    let calc: CalculatorProtocol = FinalCalculatorSwift(mult: 3)
    let result = calc.compute(val: 7)
    assert(result == 21, "Expected 21, got \(result)")

    let calc2: CalculatorProtocol = FinalCalculatorSwift(mult: 5)
    let result2 = calc2.compute(val: 10)
    assert(result2 == 50, "Expected 50, got \(result2)")

    // Test 3: Final method in non-final class
    let base = NonFinalBaseSwift()
    assert(base.compute() == 100, "Expected 100, got \(base.compute())")

    // Test 4: Type usage with optional
    var ref: FinalClassSwift? = nil
    assert(ref == nil, "Expected nil reference")

    print("SWIFT VERIFIED: All final class comparison tests passed")
    print("NOTE: Swift final class semantics are identical to ArkTS")
}

testFinalClasses()
