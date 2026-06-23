/**
 * @id EXP_07_11_03_001_PASS_TYPEREF_STATIC_METHOD
 * @expect compile-pass
 * @section 7.11.3
 * @design typeReference.identifier 形式：方法声明为 static，修饰符检查通过
 * @note 正向用例：验证 typeReference 调用的方法必须是 static，本用例满足条件
 */
class Utility {
    static max(a: int, b: int): int {
        if (a > b) { return a }
        return b
    }
    static isPositive(x: int): boolean {
        return x > 0
    }
}

function main(): void {
    let m: int = Utility.max(10, 20)
    let p: boolean = Utility.isPositive(5)
}
