/**
 * @id LEX_02_09_05_012_FAIL_BOOLEAN_INT_MIX
 * @expect compile-fail
 * @section 2.9.5
 * @design 布尔与整数类型隔离
 * @note compile-fail 用例：验证布尔不能与整数混合运算
 */

// 布尔与整数混合运算，编译失败
let x: boolean = true
let y: int = 1
let z: int = x + y
