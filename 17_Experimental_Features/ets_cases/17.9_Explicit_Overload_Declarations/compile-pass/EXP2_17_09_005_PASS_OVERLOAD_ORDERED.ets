/**
 * @id EXP2_17_09_005_PASS_OVERLOAD_ORDERED
 * @expect compile-pass
 * @section 17.9
 * @design overload 按声明顺序检查匹配
 * @note 正向用例：声明顺序影响匹配优先级
 */
function first(a: int): string { return "first-int:" + a }
function second(a: double): string { return "second-double:" + a }
function third(a: string): string { return "third-string:" + a }
overload ordered { first, second, third }
