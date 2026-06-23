/**
 * @id EXP_07_05_02_006_PASS_FUNCTION_CLASS_MIXED
 * @expect compile-pass
 * @section 7.5.2
 * @design 混合函数和类类型：let g = [(): void => {}, new A()] 推断为 (() => void | A)[]
 * @note 正向用例：验证函数类型和类类型混合推断为 union 数组
 */
class A {}

let g = [(): void => {}, new A()]
