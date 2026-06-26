/**
 * @id NAM_04_02_106_FAIL_AMBIGUOUS_IMPORT
 * @expect compile-fail
 * @section 4.2
 * @design 同名ambient和非ambient声明冲突
 * @note 反向用例：验证同一模块中ambient和非ambient同名声明编译错误
 */
declare function foo(): void;
function foo(): void {}
