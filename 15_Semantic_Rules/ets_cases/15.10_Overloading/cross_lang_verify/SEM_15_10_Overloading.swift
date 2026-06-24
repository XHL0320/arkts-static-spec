/**
 * Swift cross-language verification for 15.10 Overloading
 *
 * Key findings: All three languages have very similar overloading rules.
 * Swift function overloading by parameter type and count.
 */
import Foundation

var pass = 0, fail = 0
func check(_ cond: Bool, _ msg: String) {
    if cond { pass += 1; print("  PASS \(msg)") }
    else { fail += 1; print("  FAIL \(msg)") }
}

// === Overload by parameter type ===
func calc(_ x: Int) -> String { return "int" }
func calc(_ x: Double) -> String { return "double" }
func calc(_ x: String) -> String { return "string" }

// === Overload by parameter count ===
func sum(_ a: Int) -> String { return "one" }
func sum(_ a: Int, _ b: Int) -> String { return "two" }
func sum(_ a: Int, _ b: Int, _ c: Int) -> String { return "three" }

// === Return type alone NOT sufficient ===
// Swift: same as ArkTS/Java - compile error

// === Overload by parameter type ===
check(calc(1) == "int", "overload by param type: Int")
check(calc(1.0) == "double", "overload by param type: Double")
check(calc("x") == "string", "overload by param type: String")

// === Overload by parameter count ===
check(sum(1) == "one", "overload by param count: 1 param")
check(sum(1, 2) == "two", "overload by param count: 2 params")
check(sum(1, 2, 3) == "three", "overload by param count: 3 params")

print("\n=== Summary ===")
print("Pass: \(pass)  Fail: \(fail)")
if fail > 0 { exit(1) }
print("verified")
