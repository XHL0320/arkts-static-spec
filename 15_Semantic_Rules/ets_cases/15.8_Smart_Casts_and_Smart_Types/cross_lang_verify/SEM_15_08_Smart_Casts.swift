/**
 * Swift cross-language verification for 15.8 Smart Casts and Smart Types
 *
 * Key difference: Swift uses optional binding `as?` for type casting;
 * ArkTS auto-narrows (Smart Cast).
 */
import Foundation

var pass = 0
var fail = 0

func check(_ cond: Bool, _ msg: String) {
    if cond { pass += 1; print("  PASS \(msg)") }
    else { fail += 1; print("  FAIL \(msg)") }
}

// === 15.8.1 instanceof narrowing ===
// ArkTS: if (a instanceof Dog) { a.bark(); }  // auto-narrowed
// Swift: if let d = a as? Dog { d.bark() }    // optional binding
do {
    let a: Animal = Dog()
    if let d = a as? Dog {
        check(d.bark() == "Woof!", "instanceof narrowing (Swift: optional binding as?)")
    } else {
        check(false, "instanceof narrowing - should be Dog")
    }
}

// === Smart cast with interface ===
do {
    let a: Animal = Cat()
    if let c = a as? Cat {
        check(c.meow() == "Meow!", "instanceof interface narrowing (Swift: as?)")
    } else {
        check(false, "interface narrowing - should be Cat")
    }
}

// === null check narrowing ===
// ArkTS: if (x != null) { x.use(); }
// Swift: optional binding if let
do {
    let s: String? = "hello"
    if let unwrapped = s {
        check(unwrapped.count == 5, "null check (Swift: optional binding)")
    } else {
        check(false, "null check - should have value")
    }
}

// === Control flow narrowing ===
do {
    let a: Animal = Dog()
    if let d = a as? Dog {
        check(d.bark() == "Woof!", "CFG narrowing (Swift: optional binding)")
    }
}

// === Logical AND/OR narrowing ===
do {
    let o: Any = "hello"
    if let s = o as? String {
        check(!s.isEmpty, "logical AND narrowing (Swift: as?)")
    }
}

// === Difference from ArkTS ===
// ArkTS: typeof x === "string" narrows to string
// Swift: use optional binding or type check
do {
    let o: Any = "test"
    if let s = o as? String {
        check(s == "test", "typeof equivalent (Swift: as? String)")
    }
}

print("\n=== Summary ===")
print("Pass: \(pass)  Fail: \(fail)")
if fail > 0 { exit(1) }
print("verified")

class Animal {
    func speak() -> String { return "..." }
}

class Dog: Animal {
    override func speak() -> String { return "Woof!" }
    func bark() -> String { return "Woof!" }
}

class Cat: Animal {
    override func speak() -> String { return "Meow!" }
    func meow() -> String { return "Meow!" }
}
