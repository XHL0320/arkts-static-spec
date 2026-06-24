/**
 * @id LEX_02_09_08_012_PASS_UNDEFINED_ARRAY_INIT
 * @expect compile-pass
 * @section 2.9.8
 * @design undefined 在数组初始化中
 * @note compile-pass 用例：验证 undefined 在数组初始化中的使用
 */

// undefined 在数组初始化中
let arr1: Array<int | undefined> = [1, undefined, 3]
let arr2: Array<string | undefined> = ["a", undefined, "c"]
let arr3: Array<boolean | undefined> = [true, undefined, false]
