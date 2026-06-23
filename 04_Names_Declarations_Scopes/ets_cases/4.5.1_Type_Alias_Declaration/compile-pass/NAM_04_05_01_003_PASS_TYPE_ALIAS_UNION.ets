/**
 * @id NAM_04_05_01_003_PASS_TYPE_ALIAS_UNION
 * @expect compile-pass
 * @section 4.5.1
 * @design 联合类型别名
 * @note 正向用例：验证联合类型别名
 */
type NullishNumber = number | undefined;
let x: NullishNumber = 42;
let y: NullishNumber = undefined;
