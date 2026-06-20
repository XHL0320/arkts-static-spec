/**
 * @id NAM_04_02_001_PASS_DIFF_NAMES
 * @expect compile-pass
 * @section 4.2
 * @design 不同名称声明可共存
 * @note 正向用例：验证不同名称声明共存
 */
const PI: number = 3.14;
const pi: number = 3;
function Pi(): void {}
type IP = number[];
