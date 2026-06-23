/**
 * @id LEX_02_09_04_019_PASS_BIGINT_DIV_MOD
 * @expect compile-pass
 * @section 2.9.4
 * @design bigint 除法/取模
 * @note compile-pass 用例：验证 bigint 除法/取模语法
 */

// bigint 除法/取模
let x1: bigint = 10n / 3n
let x2: bigint = 10n % 3n
let x3: bigint = -10n / 3n
let x4: bigint = -10n % 3n
