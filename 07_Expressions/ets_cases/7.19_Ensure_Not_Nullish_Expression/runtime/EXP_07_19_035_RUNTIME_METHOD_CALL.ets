/**
 * @id EXP_07_19_035_RUNTIME_METHOD_CALL
 * @expect runtime
 * @section 7.19
 * @design 验证 ! 方法调用在运行时非空时正常调用
 * @note 运行时用例：obj!.method() 正常调用
 */
class Calc {
    triple(n: int): int {
        return n * 3
    }
}

function main(): void {
    let c: Calc | undefined = new Calc()
    let r: int = c!.triple(10)
    if (r != 30) {
        throw new Error("assertion failed: expected 30, got " + r)
    }
    console.log("verified")
}
