/**
 * @id LEX_02_09_06_027_PASS_STRING_ARRAY
 * @expect compile-pass
 * @section 2.9.6
 * @design 字符串数组
 * @note compile-pass 用例：验证字符串数组语法
 */

// 字符串数组
let arr1: string[] = ["Hello", "World"]
let arr2: Array<string> = ["foo", "bar", "baz"]

// 字符串数组访问
let s1 = arr1[0]
let s2 = arr1[1]

// 字符串数组长度
let len = arr1.length
