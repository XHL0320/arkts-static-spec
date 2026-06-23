// Swift Runtime Test - 对应 2.8 Operators and Punctuators 运行时验证
// 测试重点：各类运算符的运行时语义正确性
// Swift 与 ArkTS 的运算符语义高度一致

import Foundation

@main
struct Main {
    static func main() {
        print("=== Swift Operators and Punctuators Runtime Test ===")
        print("")

        var assertionsPassed = 0

        // 维度 1：算术运算符
        let add = 10 + 20
        assert(add == 30, "Addition failed, got \(add)")
        assertionsPassed += 1
        print("[Swift] Arithmetic (+): PASSED (\(add))")

        let sub = 50 - 30
        assert(sub == 20, "Subtraction failed, got \(sub)")
        assertionsPassed += 1
        print("[Swift] Arithmetic (-): PASSED (\(sub))")

        let mul = 5 * 6
        assert(mul == 30, "Multiplication failed, got \(mul)")
        assertionsPassed += 1
        print("[Swift] Arithmetic (*): PASSED (\(mul))")

        let div = 100 / 4
        assert(div == 25, "Division failed, got \(div)")
        assertionsPassed += 1
        print("[Swift] Arithmetic (/): PASSED (\(div))")

        let mod = 17 % 5
        assert(mod == 2, "Modulo failed, got \(mod)")
        assertionsPassed += 1
        print("[Swift] Arithmetic (%): PASSED (\(mod))")

        // 维度 2：比较运算符
        let lt = 5 < 10
        assert(lt == true, "Less than failed")
        assertionsPassed += 1
        print("[Swift] Comparison (<): PASSED")

        let gt = 10 > 5
        assert(gt == true, "Greater than failed")
        assertionsPassed += 1
        print("[Swift] Comparison (>): PASSED")

        let eq = 10 == 10
        assert(eq == true, "Equality failed")
        assertionsPassed += 1
        print("[Swift] Comparison (==): PASSED")

        let neq = 10 != 5
        assert(neq == true, "Not equal failed")
        assertionsPassed += 1
        print("[Swift] Comparison (!=): PASSED")

        // 维度 3：逻辑运算符
        let and = true && true
        assert(and == true, "Logical AND failed")
        assertionsPassed += 1
        print("[Swift] Logical (&&): PASSED")

        let or = false || true
        assert(or == true, "Logical OR failed")
        assertionsPassed += 1
        print("[Swift] Logical (||): PASSED")

        let not = !false
        assert(not == true, "Logical NOT failed")
        assertionsPassed += 1
        print("[Swift] Logical (!): PASSED")

        // 维度 4：位运算符
        let band = 0xFF & 0x0F
        assert(band == 0x0F, "Bitwise AND failed, got \(band)")
        assertionsPassed += 1
        print("[Swift] Bitwise (&): PASSED (\(band))")

        let bor = 0xF0 | 0x0F
        assert(bor == 0xFF, "Bitwise OR failed, got \(bor)")
        assertionsPassed += 1
        print("[Swift] Bitwise (|): PASSED (\(bor))")

        let bxor = 0xFF ^ 0x0F
        assert(bxor == 0xF0, "Bitwise XOR failed, got \(bxor)")
        assertionsPassed += 1
        print("[Swift] Bitwise (^): PASSED (\(bxor))")

        let lshift = 1 << 4
        assert(lshift == 16, "Left shift failed, got \(lshift)")
        assertionsPassed += 1
        print("[Swift] Bitwise (<<): PASSED (\(lshift))")

        let rshift = 16 >> 2
        assert(rshift == 4, "Right shift failed, got \(rshift)")
        assertionsPassed += 1
        print("[Swift] Bitwise (>>): PASSED (\(rshift))")

        // 维度 5：赋值运算符
        var a = 10; a += 5
        assert(a == 15, "Addition assignment failed, got \(a)")
        assertionsPassed += 1
        print("[Swift] Assignment (+=): PASSED (\(a))")

        var b = 20; b -= 8
        assert(b == 12, "Subtraction assignment failed, got \(b)")
        assertionsPassed += 1
        print("[Swift] Assignment (-=): PASSED (\(b))")

        var c = 6; c *= 7
        assert(c == 42, "Multiplication assignment failed, got \(c)")
        assertionsPassed += 1
        print("[Swift] Assignment (*=): PASSED (\(c))")

        var d = 100; d /= 4
        assert(d == 25, "Division assignment failed, got \(d)")
        assertionsPassed += 1
        print("[Swift] Assignment (/=): PASSED (\(d))")

        // 维度 6：三元运算符
        let ternary = (10 > 5) ? 100 : 200
        assert(ternary == 100, "Ternary operator failed, got \(ternary)")
        assertionsPassed += 1
        print("[Swift] Ternary (?:): PASSED (\(ternary))")

        // 维度 7：类型运算符
        let s = "hello"
        let isString = s is String
        assert(isString == true, "is operator failed")
        assertionsPassed += 1
        print("[Swift] Type (is): PASSED")

        // 维度 8：字符串连接
        let concat = "Hello" + " " + "World"
        assert(concat == "Hello World", "String concatenation failed")
        assertionsPassed += 1
        print("[Swift] String concatenation (+): PASSED")

        // 维度 9：复合表达式
        let complex = (10 + 20) * 3 - 15 / 5
        assert(complex == 87, "Complex expression failed, got \(complex)")
        assertionsPassed += 1
        print("[Swift] Complex expression: PASSED (\(complex))")

        // 维度 10：一元运算符
        var x = 5
        x += 1
        let preInc = x
        assert(preInc == 6, "Pre-increment failed, got \(preInc)")
        assertionsPassed += 1
        print("[Swift] Unary (+=1): PASSED (\(preInc))")

        var y = 10
        let postDec = y
        y -= 1
        assert(postDec == 10, "Post-decrement failed, got \(postDec)")
        assertionsPassed += 1
        print("[Swift] Unary (post --): PASSED (\(postDec))")

        print("")
        print("=== Swift Operators Runtime Test PASSED ===")
        print("Total assertions passed: \(assertionsPassed)")
    }
}
