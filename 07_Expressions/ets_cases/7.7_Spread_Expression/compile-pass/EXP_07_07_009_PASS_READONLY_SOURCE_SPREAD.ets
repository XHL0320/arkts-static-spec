/**
 * @id EXP_07_07_009_PASS_READONLY_SOURCE_SPREAD
 * @expect compile-pass
 * @section 7.7
 * @design 只读源数组扩展：readonly int[] 源在扩展中，目标数组为可读写
 * @note 正向用例：验证只读源数组不影响扩展后目标数组的可变性
 */
let a: readonly int[] = [1, 2, 3]
let rw: int[] = [...a]
rw[1] = 1
