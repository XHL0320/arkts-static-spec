/**
 * @id LEX_02_09_04_002_PASS_BIGINT_UNDERSCORE
 * @expect compile-pass
 * @section 2.9.4
 * @design bigint 带下划线分隔符
 * @note compile-pass 用例：验证 bigint 下划线分隔符语法
 */

// bigint 带下划线
let x1: bigint = 1_153n
let x2: bigint = 1_000_000n
let x3: bigint = 9876_5432_10n
