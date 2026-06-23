/**
 * @id LEX_02_05_042_PASS_BIGINT_LITERALS
 * @expect compile-pass
 * @section 2.5
 * @design BigInt 字面量
 * @note compile-pass 用例：验证 BigInt 字面量
 */

// BigInt 字面量
let x1: bigint = 123n
let x2: bigint = 0n
let x3: bigint = -456n
let x4: bigint = 1_000_000n
