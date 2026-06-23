/**
 * @id EXP_07_21_07_032_RUNTIME_SHORT_VALUE
 * @expect runtime
 * @section 7.21.7
 * @design 验证 ~short 运行时值正确：~2=-3(int), ~(-1)=0(int)
 * @note 运行时用例：~short 值验证，结果类型为 int
 */
function main(): void {
    let a: short = 2
    let ra: int = ~a
    if (ra != -3) {
        throw new Error("assertion failed: ~short(2) != -3, got " + ra)
    }

    let b: short = -1
    let rb: int = ~b
    if (rb != 0) {
        throw new Error("assertion failed: ~short(-1) != 0, got " + rb)
    }

    let c: short = 0
    let rc: int = ~c
    if (rc != -1) {
        throw new Error("assertion failed: ~short(0) != -1, got " + rc)
    }

    console.log("verified")
}
