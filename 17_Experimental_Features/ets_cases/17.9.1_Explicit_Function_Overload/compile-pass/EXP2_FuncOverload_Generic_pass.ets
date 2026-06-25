/**
 * @id EXP2_FuncOverload_Generic_pass
 * @expect compile-pass
 * @section 17.9.1
 * @design overload 中包含泛型函数
 * @note 正向用例：泛型函数可以参与 overload
 */
function idInt(a: int): int { return a }
function idStr(a: string): string { return a }
function idGeneric<T>(a: T): T { return a }
overload identity { idInt, idStr, idGeneric }
