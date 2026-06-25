/**
 * @id EXP2_FuncOverload_NoAccessibleFunc_fail
 * @expect compile-fail
 * @section 17.9.1
 * @design overload identifier 引用不存在的函数 — 编译错误
 * @note 反向用例：noAccessible 不是任何已声明函数的名称
 */
function realFunc(a: int): int { return a }
// nonExistent 不存在 — 应编译失败
overload broken { realFunc, nonExistent }
