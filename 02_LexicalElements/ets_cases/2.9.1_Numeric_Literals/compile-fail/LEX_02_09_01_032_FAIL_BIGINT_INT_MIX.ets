/**
 * @id LEX_02_09_01_032_FAIL_BIGINT_INT_MIX
 * @expect compile-fail
 * @section 2.9.1
 * @design bigint 与 int/long 混合运算不支持
 * @note compile-fail 用例：验证 bigint 不能与其他数值类型混合运算
 */

// bigint 与 int 混合运算不被支持，编译失败
let big: bigint = 1000000000000n
let small: int = 100
let sum: bigint = big + small as bigint
