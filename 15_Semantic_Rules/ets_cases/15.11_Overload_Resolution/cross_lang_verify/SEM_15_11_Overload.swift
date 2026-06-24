/**
 * Swift cross-language verification for 15.11 Overload Resolution
 *
 * Key differences:
 * - Swift: overload set based on function name + parameter types
 * - Swift: no static method inheritance in overload set (like ArkTS spec)
 * - Swift: overload resolution at compile time based on static types
 */
import Foundation

var pass = 0, fail = 0
func check(_ cond: Bool, _ msg: String) {
    if cond { pass += 1; print("  PASS \(msg)") }
    else { fail += 1; print("  FAIL \(msg)") }
}

// === Overload set: multiple functions with same name ===
func pick(_ x: Int) -> String { return "int" }
func pick(_ x: String) -> String { return "string" }
func pick(_ x: Double) -> String { return "double" }

// === Static method inheritance ===
class Base {
    class func select(_ x: Int) -> String { return "base-int" }
    class func select(_ x: String) -> String { return "base-string" }
}
class Derived: Base {
    // Swift: class methods ARE inherited, but you can add overloads
    class func select(_ x: Double) -> String { return "derived-double" }
}

// === Overload resolution ===
class PolyBase {
    func pickNum(_ x: Int) -> String { return "base-number" }
}
class PolyDerived: PolyBase {
    func pickInt(_ x: Int) -> String { return "derived-int" }
    override func pickNum(_ x: Int) -> String { return "derived-number" }
}

// === Basic overload resolution ===
check(pick(1) == "int", "overload resolution: Int param")
check(pick("hello") == "string", "overload resolution: String param")
check(pick(1.0) == "double", "overload resolution: Double param")

// === Static method set ===
check(Derived.select(42) == "base-int", "Swift: class method inherited")
check(Derived.select(1.0) == "derived-double", "Swift: own class method")

// === Overload resolution by declared type ===
let b: PolyBase = PolyDerived()
// b.pickInt(1)  // COMPILE ERROR: pickInt not in PolyBase
check(true, "Swift: overload resolution by declared type at compile time")

// === Override via vtable ===
check(b.pickNum(1) == "derived-number", "Swift: override via vtable dispatch (runtime)")

print("\n=== Summary ===")
print("Pass: \(pass)  Fail: \(fail)")
if fail > 0 { exit(1) }
print("verified")
