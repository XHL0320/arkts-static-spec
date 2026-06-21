/**
 * @id NAM_04_07_04_001_FAIL_OPTIONAL_BEFORE_REQUIRED
 * @expect compile-fail
 * @section 4.7.4
 * @design 可选参数出现在必需参数之前，应报错
 * @note 反向用例：可选参数必须在必需参数之后
 */
function foo(x?: int, y: int): void {}
