/**
 * @id EXP_07_11_02_001_PASS_TYPEREF_STATIC_METHOD
 * @expect compile-pass
 * @section 7.11.2
 * @design typeReference 形式：通过类名调用静态方法，候选集合包含该静态方法且可解析
 * @note 正向用例：验证 typeReference of type T 能找到类 T 中名为 identifier 的静态方法
 */
class Calculator {
    static add(a: int, b: int): int {
        return a + b
    }
    static getVersion(): string {
        return "1.0"
    }
}

function main(): void {
    let sum: int = Calculator.add(3, 4)
    let ver: string = Calculator.getVersion()
}
