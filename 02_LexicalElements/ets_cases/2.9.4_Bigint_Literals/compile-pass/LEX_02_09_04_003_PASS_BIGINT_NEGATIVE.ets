/**
 * @id LEX_02_09_04_003_PASS_BIGINT_NEGATIVE
 * @expect compile-pass
 * @section 2.9.4
 * @design 负 bigint 字面量
 * @note compile-pass 用例：验证负 bigint 语法
 */

// 负 bigint 字面量
let x1: bigint = -153n
let x2: bigint = -1_000_000n
let x3: bigint = -0n
