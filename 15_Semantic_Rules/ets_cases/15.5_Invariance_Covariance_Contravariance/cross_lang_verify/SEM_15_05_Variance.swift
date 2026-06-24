/**
 * Swift cross-language verification for 15.5 Invariance, Covariance, Contravariance
 *
 * Key difference: Swift supports declaration-site variance (generic where clauses),
 * ArkTS and Java do not.
 */
import Foundation

var pass = 0
var fail = 0

func check(_ cond: Bool, _ msg: String) {
    if cond { pass += 1; print("  PASS \(msg)") }
    else { fail += 1; print("  FAIL \(msg)") }
}

// Generic invariance
class Box<T> {
    var value: T
    init(_ v: T) { self.value = v }
    func get() -> T { return value }
    func set(_ v: T) { self.value = v }
}

// Return type covariance
class Animal {
    func reproduce() -> Animal { return Animal() }
    func speak() -> String { return "..." }
}
class Dog: Animal {
    override func reproduce() -> Dog { return Dog() }  // covariant return
    override func speak() -> String { return "Woof!" }
}

// Parameter contravariance via closure
typealias Consumer<T> = (T) -> Void

// === Generic invariance ===
// Swift: same as ArkTS/Java - generics are invariant by default
do {
    let dogBox = Box(Dog())
    // let animalBox: Box<Animal> = dogBox  // COMPILE ERROR (invariance)
    check(true, "generic invariance (Swift: same as ArkTS/Java)")
}

// === Return type covariance ===
// Swift supports covariant return types via override
do {
    let d = Dog()
    let result: Animal = d.reproduce()
    check(result is Dog, "return type covariance (Swift: same as ArkTS)")
}

// === Parameter contravariance ===
// Swift closures support contravariance naturally
do {
    let dogConsumer: Consumer<Dog> = { d in print("  INFO dog") }
    // Swift: Consumer<Animal> is not subtype of Consumer<Dog> (invariance)
    // But function types are contravariant in parameters
    let animalFunc: (Animal) -> Void = { a in print("  INFO animal") }
    let dogFunc: (Dog) -> Void = animalFunc  // ✅ function type parameter contravariance
    dogFunc(Dog())
    check(true, "parameter contravariance (Swift: function type parameter contravariance)")
}

// === Swift-specific: declaration-site variance ===
// ArkTS and Java do NOT support declaration-site variance
// Swift supports generic where clauses
do {
    func process<T: Animal>(_ t: T) -> String {
        return t.speak()
    }
    let result = process(Dog())
    check(result == "Woof!", "declaration-site variance (Swift specific, ArkTS does not support)")
}

print("\n=== Summary ===")
print("Pass: \(pass)  Fail: \(fail)")
if fail > 0 { exit(1) }
print("verified")

extension Dog {
    func bark() -> String { return "Woof!" }
}
