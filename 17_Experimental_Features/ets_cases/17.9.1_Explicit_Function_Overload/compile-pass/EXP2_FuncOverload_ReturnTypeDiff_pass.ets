/**
 * @id EXP2_FuncOverload_ReturnTypeDiff_pass
 * @expect compile-pass
 * @section 17.9.1
 * @design overload 函数可以有不同返回类型
 * @note 正向用例：不同返回类型不冲突
 */
function toInt(a: int): int { return a }
function toString(a: int): string { return "val:" + a }
function toBool(a: int): boolean { return a > 0 }
overload convert { toInt, toString, toBool }
