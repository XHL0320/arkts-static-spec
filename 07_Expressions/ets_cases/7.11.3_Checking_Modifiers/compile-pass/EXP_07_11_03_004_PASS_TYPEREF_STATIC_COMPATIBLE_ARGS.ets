/**
 * @id EXP_07_11_03_004_PASS_TYPEREF_STATIC_COMPATIBLE_ARGS
 * @expect compile-pass
 * @section 7.11.3
 * @design typeReference.identifier 静态方法调用参数兼容性检查：参数类型匹配时通过
 * @note 正向用例：验证 typeReference 静态方法调用时，参数类型兼容性检查通过
 */
class Calculator {
    static add(a: int, b: int): int {
        return a + b
    }
    static concat(a: string, b: string): string {
        return a + b
    }
    static sum(values: int[]): int {
        let s: int = 0
        for (let i: int = 0; i < values.length; i++) {
            s = s + values[i]
        }
        return s
    }
}

function main(): void {
    let r1: int = Calculator.add(3, 4)
    let r2: string = Calculator.concat("Hello", " World")
    let arr: int[] = [1, 2, 3]
    let r3: int = Calculator.sum(arr)
}
