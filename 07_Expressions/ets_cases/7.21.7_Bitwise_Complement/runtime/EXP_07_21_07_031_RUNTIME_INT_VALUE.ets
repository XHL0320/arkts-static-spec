/**
 * @id EXP_07_21_07_031_RUNTIME_INT
 * @expect runtime
 * @section 7.21.7
 * @design 验证 ~int 运行时值正确：~2=-3, ~(-3)=2, ~0=-1
 * @note 运行时用例：~int 值验证
 */
function main(): void {
    let a: int = 2
    let ra: int = ~a
    if (ra != -3) {
        throw new Error("assertion failed: ~2 != -3, got " + ra)
    }

    let b: int = -3
    let rb: int = ~b
    if (rb != 2) {
        throw new Error("assertion failed: ~(-3) != 2, got " + rb)
    }

    let c: int = 0
    let rc: int = ~c
    if (rc != -1) {
        throw new Error("assertion failed: ~0 != -1, got " + rc)
    }

    let d: int = -1
    let rd: int = ~d
    if (rd != 0) {
        throw new Error("assertion failed: ~(-1) != 0, got " + rd)
    }

    console.log("verified")
}
