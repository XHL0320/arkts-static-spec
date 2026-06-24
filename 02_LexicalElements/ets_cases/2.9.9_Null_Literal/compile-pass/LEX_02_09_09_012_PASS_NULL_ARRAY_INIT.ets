/**
 * @id LEX_02_09_09_012_PASS_NULL_ARRAY_INIT
 * @expect compile-pass
 * @section 2.9.9
 * @design null 在数组初始化中
 * @note compile-pass 用例：验证 null 在数组初始化中的使用
 */

// null 在数组初始化中
let arr1: Array<int | null> = [1, null, 3]
let arr2: Array<string | null> = ["a", null, "c"]
let arr3: Array<boolean | null> = [true, null, false]
