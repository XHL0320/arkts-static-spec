/**
 * Swift cross-language verification for 15.1 Semantic Essentials
 *
 * Key difference: Swift requires explicit numeric conversion.
 * ArkTS/Java allow implicit int→double widening.
 */
import Foundation

var pass = 0, fail = 0
func check(_ cond: Bool, _ msg: String) {
    if cond { pass += 1; print("  PASS \(msg)") }
    else { fail += 1; print("  FAIL \(msg)") }
}

// Numeric widening: Swift requires explicit conversion
let i: Int = 42
// let d: Double = i  // COMPILE ERROR in Swift
let d = Double(i)
check(d == 42.0, "numeric widening (Swift: explicit conversion required)")

// String concatenation
let s = "Hello, \(42)\(true)"
check(s == "Hello, 42true", "string interpolation (Swift: pattern)")

// Assignment context: subtype
let o: Any = "string"
check(o is String, "assignment context: subtype (Swift: same)")

// Standalone expression type
let expr = 1 + 2
check(expr == 3, "standalone expression Int (Swift: same)")

// Variable initialization
let v = "hello"
check(v == "hello", "variable initialization (Swift: same)")

print("\n=== Summary ===")
print("Pass: \(pass)  Fail: \(fail)")
if fail > 0 { exit(1) }
print("verified")
