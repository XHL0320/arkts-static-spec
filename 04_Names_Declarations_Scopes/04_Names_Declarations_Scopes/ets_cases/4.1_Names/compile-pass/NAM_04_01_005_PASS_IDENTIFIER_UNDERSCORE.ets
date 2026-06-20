/**
 * @id NAM_04_01_005_PASS_IDENTIFIER_UNDERSCORE
 * @expect compile-pass
 * @section 4.1
 * @design 下划线开头的标识符
 * @note 正向用例：验证下划线开头标识符
 */
let _privateVar: string = "hidden";
let __internal: number = 0;
