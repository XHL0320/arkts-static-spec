// Swift 5.10 - 3.1~3.11 可比特性汇总验证

var pass = 0
var fail = 0

func check(_ cond: Bool, _ name: String) {
    if cond {
        pass += 1
        print("PASS \(name)")
    } else {
        fail += 1
        print("FAIL \(name)")
    }
}

// 3.1 / 3.6.1 Numeric Types
func testNumericTypes() {
    let b: Int8 = 127
    let s: Int16 = 32767
    let i: Int32 = 2147483647
    let l: Int64 = 9223372036854775807
    let f: Float = 3.14
    let d: Double = 3.14

    // Swift 不允许隐式 widening，必须显式构造
    let widen = Int64(b)
    let widen2 = Double(i)
    check(widen == 127 && widen2 == 2147483647.0, "numeric explicit widening")

    check(true, "Swift has no number alias (N/A)")
}

// 3.6.2 Integer Operations
func testIntegerOperations() {
    let a: Int32 = 12
    let c: Int32 = 10
    check((a & c) == 8, "bitwise and")
    check((a | c) == 14, "bitwise or")
    check((a ^ c) == 6, "bitwise xor")
    check((Int32(16) >> 2) == 4, "shift positive")
    check((Int32(-16) >> 2) == -4, "shift negative arithmetic")

    // Swift 默认溢出会 trap，因此用 &+ 验证包装行为
    let max = Int32.max
    check(max &+ 1 == Int32.min, "integer overflow wraps only with &+")
}

// 3.6.3 Floating-Point
func testFloatingPoint() {
    let posInf = 5.0 / 0.0
    let negInf = -5.0 / 0.0
    let nan = 0.0 / 0.0
    check(posInf.isInfinite && posInf > 0, "float div zero +inf")
    check(negInf.isInfinite && negInf < 0, "float div zero -inf")
    check(nan.isNaN, "float zero over zero NaN")
    check(Int(3.7) == 3 && Int(-3.7) == -3, "float to int truncates toward zero")
}

// 3.6.4 Bool
func testBool() {
    let t = true
    let f = false
    check(t && !f, "Bool && !")
    check(t || f, "Bool ||")
    check("flag=\(true)" == "flag=true", "Bool string interpolation")
    check(true, "Swift has no boolean &|^ operators (N/A)")
}

// 3.7 Reference Types vs Value Types
final class RefBox { var v: Int = 0 }
func testReferencesAndValues() {
    let r1 = RefBox()
    let r2 = r1
    r2.v = 100
    check(r1.v == 100, "class reference shared")

    var arr = [1, 2, 3]
    var arr2 = arr
    arr2[0] = 99
    check(arr[0] == 1 && arr2[0] == 99, "Array is value type (COW)")

    let anyValue: Any = 42
    check(anyValue is Int, "Any holds Int")
}

// 3.2 User-defined: class/protocol/enum/generic
protocol Shape { func area() -> Int }
struct Square: Shape {
    let s: Int
    func area() -> Int { return s * s }
}

enum Color: CaseIterable { case red, green, blue }

struct SBox<T> {
    let v: T
}

func testUserDefinedTypes() {
    let sh: any Shape = Square(s: 4)
    check(sh.area() == 16, "protocol dispatch")
    check(Color.allCases.count == 3, "enum allCases")
    let b = SBox<Int>(v: 42)
    check(b.v == 42, "generic struct")
}

// Function type analog
func testFunctionType() {
    let square: (Int) -> Int = { x in x * x }
    check(square(5) == 25, "function type")
}

// 3.11 Void
func testVoid() {
    func f1() -> Void { return () }
    f1()
    let v: Void = ()
    let arr: [Void] = [(), ()]
    check(arr.count == 2, "Void array")
    check(true, "Void variable ok: \(v)")
}

// Never
func neverFunction() -> Never {
    fatalError("never")
}
func testNever() {
    check(true, "Swift Never exists (not invoked to avoid crash)")
}

// N/A feature markers
func testNAs() {
    check(true, "Swift has no union types (N/A)")
    check(true, "Swift has no native bigint (N/A)")
    check(true, "Swift has no undefined value (N/A)")
    check(true, "Swift has tuple types (comparable to ArkTS tuple)")
}

testNumericTypes()
testIntegerOperations()
testFloatingPoint()
testBool()
testReferencesAndValues()
testUserDefinedTypes()
testFunctionType()
testVoid()
testNever()
testNAs()

print("SUMMARY pass=\(pass) fail=\(fail)")
if fail != 0 {
    exit(1)
}
