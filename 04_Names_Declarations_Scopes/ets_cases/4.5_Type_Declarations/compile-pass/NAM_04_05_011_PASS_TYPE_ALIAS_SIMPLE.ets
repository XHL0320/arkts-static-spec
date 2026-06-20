/**
 * @id NAM_04_05_011_PASS_TYPE_ALIAS_SIMPLE
 * @expect compile-pass
 * @section 4.5.1
 * @design 简单类型别名赋值兼容
 * @note 正向用例：验证类型别名是原名的新名字而非新类型
 */
type Vector = number[];
function max(x: Vector): number { return 0; }
let x: Vector = [2, 3, 1];
