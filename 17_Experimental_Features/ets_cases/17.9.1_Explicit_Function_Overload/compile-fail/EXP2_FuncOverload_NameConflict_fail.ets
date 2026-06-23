/**
 * @id EXP2_17_09_01_014_FAIL_OVERLOAD_NAME_CONFLICT
 * @expect compile-fail
 * @section 17.9.1
 * @design overload 名与函数名相同但函数不在列表中 — 编译错误（另一变体）
 * @note 反向用例：函数已定义，overload 使用同名但列表不含该函数
 */
function getValue(a: int): int { return a }
// 函数 getValue 存在但不在此 overload 列表中
overload getValue { getValue, getValue }
