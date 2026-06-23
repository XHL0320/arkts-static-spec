/**
 * @id GEN_05_02_01_005_PASS_TYPE_ARG_FUNC_TYPE
 * @expect compile-pass
 * @section 5.3
 * @design 类型参数-函数类型
 * @note 正向用例：验证函数类型作为类型参数
 */
let arr5: Array<() => void> = [(): void => {}];
