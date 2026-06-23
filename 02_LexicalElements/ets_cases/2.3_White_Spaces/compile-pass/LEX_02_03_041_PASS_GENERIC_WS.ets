/**
 * @id LEX_02_03_041_PASS_GENERIC_WS
 * @expect compile-pass
 * @section 2.3
 * @design 泛型中空白
 * @note compile-pass 用例：验证泛型中的空白
 */

// 泛型中空白
let arr1: Array<int> = [1, 2, 3]
let arr2: Array < int > = [4, 5, 6]
let arr3: Array< int > = [7, 8, 9]
let arr4: Array <int> = [10, 11, 12]

// 嵌套泛型
let arr5: Array<Array<int>> = [[1, 2], [3, 4]]
let arr6: Array < Array < int > > = [[5, 6], [7, 8]]
