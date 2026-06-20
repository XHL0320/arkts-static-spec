// 3.1~3.9 Swift cross-language verification
// Swift equivalents for ArkTS type system tests

// === 3.1 Predefined Types ===
print("=== 3.01 Predefined Types ===")
let b: Int8 = 1
let s: Int16 = 2
let i: Int32 = 3
let l: Int64 = 4
let f: Float32 = 3.14
let d: Float64 = 3.14
let bool = true
print("byte=\(b) short=\(s) int=\(i) long=\(l) float=\(f) double=\(d) bool=\(bool)")

// Key diff: Swift Int cannot be nil (matches ArkTS)
// var x: Int = nil  // compile error

// === 3.2 User-Defined Types ===
print("=== 3.02 User-Defined Types ===")
struct Point { var x: Int; var y: Int }
var p = Point(x: 1, y: 2)
print("Point(\(p.x),\(p.y))")

// === 3.3 Using Types ===
print("=== 3.03 Using Types ===")
let x: Int = 42
let s: String = "hello"
let dd: Double = 3.14
print("int=\(x) str=\(s) double=\(dd)")

// === 3.4 Named Types (Swift: typealias) ===
print("=== 3.04 Named Types ===")
typealias Matrix = [[Double]]
let m: Matrix = [[1.0, 2.0], [3.0, 4.0]]
print("Swift has typealias (similar to ArkTS type alias)")

// === 3.5 Type References ===
print("=== 3.05 Type References ===")
let list: [String] = ["hello"]
print("List<String>=\(list[0])")

// === 3.6 Numeric ===
print("=== 3.6.1 Numeric Types ===")
let bi: Int8 = 127
let si: Int16 = 32767
let ii: Int32 = 2147483647
let li: Int64 = 9223372036854775807
print("Int8=\(bi) Int16=\(si) Int32=\(ii) Int64=\(li)")

print("=== 3.6.2 Integer Division ===")
let divResult: Int = 1 / 2
print("1/2 = \(divResult) (Swift: integer division truncates, same as ArkTS)")

print("=== 3.6.3 Float ===")
let nanVal = Double.nan
let infVal = Double.infinity
print("NaN != NaN = \(nanVal != nanVal)")
print("Infinity > 1e308 = \(infVal > 1e308)")

print("=== 3.6.4 Boolean ===")
let t = true, f = false
print("true&&false=\(t && f) true||false=\(t || f) !true=\(!t)")

// === 3.7 Reference Types ===
print("=== 3.07 Reference Types ===")
// Swift: classes are reference types, structs are value types
class RefType { var x: Int = 0 }
var ref: RefType? = nil  // Swift uses Optional for nullability
ref = RefType()
print("Swift: reference types use Optional (matches ArkTS nullish pattern)")

// === 3.8 Type Any ===
print("=== 3.08 Type Any ===")
var any: Any? = nil
any = 42
any = "hello"
print("Any? can hold null and all types (similar to ArkTS Any)")

// === 3.9 Type Object ===
print("=== 3.09 Type Object ===")
// Swift: AnyObject is the protocol equivalent, but not used like ArkTS Object
// Swift has no direct "Object" base class for all types
print("Swift: AnyObject is protocol, not class (differs from ArkTS Object)")
print("Swift: nil cannot be assigned to non-Optional types (matches ArkTS)")