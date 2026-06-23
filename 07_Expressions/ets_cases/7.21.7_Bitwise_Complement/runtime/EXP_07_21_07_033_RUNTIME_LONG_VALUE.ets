/**
 * @id EXP_07_21_07_033_RUNTIME_LONG_VALUE
 * @expect runtime
 * @section 7.21.7
 * @design 验证 ~long 运行时值正确：~2=-3(long), ~(-3)=2(long)
 * @note 运行时用例：~long 值验证，结果类型为 long
 */
function main(): void {
    let a: long = 2
    let ra: long = ~a
    if (ra != -3) {
        throw new Error("assertion failed: ~long(2) != -3, got " + ra)
    }

    let b: long = -3
    let rb: long = ~b
    if (rb != 2) {
        throw new Error("assertion failed: ~long(-3) != 2, got " + rb)
    }

    let c: long = 0
    let rc: long = ~c
    if (rc != -1) {
        throw new Error("assertion failed: ~long(0) != -1, got " + rc)
    }

    let d: long = -1
    let rd: long = ~d
    if (rd != 0) {
        throw new Error("assertion failed: ~long(-1) != 0, got " + rd)
    }

    console.log("verified")
}
