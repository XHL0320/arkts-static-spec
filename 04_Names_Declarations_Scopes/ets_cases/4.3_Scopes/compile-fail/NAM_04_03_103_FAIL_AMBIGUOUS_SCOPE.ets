/**
 * @id NAM_04_03_103_FAIL_AMBIGUOUS_SCOPE
 * @expect compile-fail
 * @section 4.3
 * @design 不可区分的同名声明
 * @note 反向用例：验证作用域中不可区分的同名声明
 */
function foo(): void {}
function foo(): void {}
