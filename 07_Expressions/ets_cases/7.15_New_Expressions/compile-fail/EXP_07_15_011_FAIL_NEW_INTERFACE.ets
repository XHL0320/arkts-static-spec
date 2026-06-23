/**
 * @id EXP_07_15_011_FAIL_NEW_INTERFACE
 * @expect compile-fail
 * @section 7.15
 * @design 验证接口类型不可用 new 实例化
 * @note 反向用例：接口不能直接 new 实例化
 */
interface I { foo(): void }
let i = new I()
