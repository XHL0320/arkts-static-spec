/**
 * @id NAM_04_07_015_FAIL_OPTIONAL_BEFORE_REQUIRED
 * @expect compile-fail
 * @section 4.7.2
 * @design 可选参数在必需参数前
 * @note 反向用例：验证可选参数不能位于必需参数前
 */
function badOrder(x?: number, y: number): void {}
