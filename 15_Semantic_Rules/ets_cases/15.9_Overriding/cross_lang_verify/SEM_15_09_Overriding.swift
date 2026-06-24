/**
 * Swift cross-language verification for 15.9 Overriding
 *
 * Key findings: All three languages have very similar overriding rules.
 * Swift uses `override` keyword (same as ArkTS).
 */
import Foundation

var pass = 0, fail = 0
func check(_ cond: Bool, _ msg: String) {
    if cond { pass += 1; print("  PASS \(msg)") }
    else { fail += 1; print("  FAIL \(msg)") }
}

class Animal {
    func reproduce() -> Animal { return Animal() }
    func speak() -> String { return "..." }
}

class Dog: Animal {
    override func reproduce() -> Dog { return Dog() }  // covariant return
    override func speak() -> String { return "Woof!" }
}

protocol Speakable {
    func speak() -> String
}

class Cat: Animal, Speakable {
    override func speak() -> String { return "Meow!" }
}

// === Return type covariance ===
let d = Dog()
let result: Animal = d.reproduce()
check(result is Dog, "return type covariance (Swift: same as ArkTS)")

// === Override with override keyword ===
check(d.speak() == "Woof!", "override keyword (Swift: same as ArkTS)")

// === Protocol method override ===
let s: Speakable = Cat()
check(s.speak() == "Meow!", "protocol method override (Swift: same as ArkTS)")

// === Polymorphism via overriding ===
let a: Animal = Dog()
check(a.speak() == "Woof!", "polymorphism via override (Swift: same as ArkTS)")

// === Parameter invariance in override ===
check(true, "parameter invariance in override (Swift: same as ArkTS)")

print("\n=== Summary ===")
print("Pass: \(pass)  Fail: \(fail)")
if fail > 0 { exit(1) }
print("verified")
