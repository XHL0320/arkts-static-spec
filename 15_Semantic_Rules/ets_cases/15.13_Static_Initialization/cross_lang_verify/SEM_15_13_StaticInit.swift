/**
 * Swift cross-language verification for 15.13 Static Initialization
 *
 * Key finding: Similar to ArkTS/Java.
 * Swift uses static let/var for type properties.
 */
import Foundation

var pass = 0, fail = 0
func check(_ cond: Bool, _ msg: String) {
    if cond { pass += 1; print("  PASS \(msg)") }
    else { fail += 1; print("  FAIL \(msg)") }
}

class MyClass {
    static let x = 42
    static let y = x + 1
}

// Static property access triggers initialization
check(MyClass.x == 42, "static property initialization (Swift: same)")
check(MyClass.y == 43, "static property order (Swift: same)")

print("\n=== Summary ===")
print("Pass: \(pass)  Fail: \(fail)")
if fail > 0 { exit(1) }
print("verified")
