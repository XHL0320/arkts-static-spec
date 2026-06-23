/**
 * @id EXP_07_21_07_035_RUNTIME_FLOAT_VALUE
 * @expect runtime
 * @section 7.21.7
 * @design 验证 ~float 运行时值：float 先截断为 int 再求反
 * @note 运行时用例：~float → int（float 截断为 int）
 */
function main(): void {
    let a: float = 2.5 as float
    let ra: int = ~a
    if (ra != -3) {
        throw new Error("assertion failed: ~float(2.5) != -3, got " + ra)
    }

    let b: float = (-2.5) as float
    let rb: int = ~b
    if (rb != 1) {
        throw new Error("assertion failed: ~float(-2.5) != 1, got " + rb)
    }

    let c: float = 0.0 as float
    let rc: int = ~c
    if (rc != -1) {
        throw new Error("assertion failed: ~float(0.0) != -1, got " + rc)
    }

    let d: float = (-1.0) as float
    let rd: int = ~d
    if (rd != 0) {
        throw new Error("assertion failed: ~float(-1.0) != 0, got " + rd)
    }

    console.log("verified")
}
