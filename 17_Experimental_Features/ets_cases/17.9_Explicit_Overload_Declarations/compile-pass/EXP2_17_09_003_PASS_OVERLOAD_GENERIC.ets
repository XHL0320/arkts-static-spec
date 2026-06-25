/**
 * @id EXP2_17_09_003_PASS_OVERLOAD_GENERIC
 * @expect compile-pass
 * @section 17.9
 * @design overload 可使用泛型实体，显式类型参数可缩小候选范围
 * @note 正向用例：泛型函数参与 overload
 */
function idAny<T>(a: T): T { return a }
function idInt(a: int): int { return a }
function idStr(a: string): string { return a }
overload identity { idInt, idStr, idAny }
