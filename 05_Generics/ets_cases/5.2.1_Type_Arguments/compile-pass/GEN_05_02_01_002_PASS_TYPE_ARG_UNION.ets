/**
 * @id GEN_05_02_01_002_PASS_TYPE_ARG_UNION
 * @expect compile-pass
 * @section 5.3
 * @design 类型参数-联合类型
 * @note 正向用例：验证联合类型作为类型参数
 */
let arr2: Array<number | string> = [1, "hello"];
