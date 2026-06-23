/**
 * @id EXP2_17_09_01_009_FAIL_NAME_SAME_NOT_IN_LIST
 * @expect compile-fail
 * @section 17.9.1
 * @design overload 名与函数名相同但该函数不在列表中 — 编译错误
 * @note 反向用例：同名函数存在但不在 overload 列表中
 */
function testFunc(a: int): int { return a }
function helper(a: string): string { return a }
// overload 名 "testFunc" 等于函数名但 testFunc 不在列表中
overload testFunc { helper }
