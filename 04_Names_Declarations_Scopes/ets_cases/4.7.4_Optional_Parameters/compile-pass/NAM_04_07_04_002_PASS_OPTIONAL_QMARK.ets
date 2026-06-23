/**
 * @id NAM_04_07_04_002_PASS_OPTIONAL_QMARK
 * @expect compile-pass
 * @section 4.7.4
 * @design 可选参数问号语法
 * @note 正向用例：验证 ? 可选参数语法
 */
function hello2(name?: string): void {}
