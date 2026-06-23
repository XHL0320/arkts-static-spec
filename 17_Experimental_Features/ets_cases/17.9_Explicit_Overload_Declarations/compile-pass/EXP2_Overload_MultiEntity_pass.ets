/**
 * @id EXP2_17_09_000_002_PASS_MULTI_ENTITY
 * @expect compile-pass
 * @section 17.9
 * @design 一个实体可出现在多个 overload 声明中
 * @note 正向用例：同一函数参与多个重载集
 */
function toInt(a: int): int { return a }
function toStr(a: string): string { return a }
function toDbl(a: double): double { return a }

overload conv1 { toInt, toStr }
overload conv2 { toInt, toDbl }
// toInt 同时出现在 conv1 和 conv2 中
