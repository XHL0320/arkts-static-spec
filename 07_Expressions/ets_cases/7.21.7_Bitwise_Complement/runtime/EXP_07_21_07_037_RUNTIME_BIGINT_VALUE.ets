/**
 * @id EXP_07_21_07_037_RUNTIME_BIGINT_VALUE
 * @expect runtime
 * @section 7.21.7
 * @design 验证 ~bigint 运行时值正确：~2n=-3n, ~(-3n)=2n
 * @note 运行时用例：~bigint 值验证，结果类型为 bigint
 */
function main(): void {
    let a: bigint = 2n
    let ra: bigint = ~a
    if (ra != -3n) {
        throw new Error("assertion failed: ~bigint(2n) != -3n, got " + ra)
    }

    let b: bigint = -3n
    let rb: bigint = ~b
    if (rb != 2n) {
        throw new Error("assertion failed: ~bigint(-3n) != 2n, got " + rb)
    }

    let c: bigint = 0n
    let rc: bigint = ~c
    if (rc != -1n) {
        throw new Error("assertion failed: ~bigint(0n) != -1n, got " + rc)
    }

    let d: bigint = 1n
    let rd: bigint = ~d
    if (rd != -2n) {
        throw new Error("assertion failed: ~bigint(1n) != -2n, got " + rd)
    }

    console.log("verified")
}
