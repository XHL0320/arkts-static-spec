/**
 * @id EXP_07_02_05_003_PASS_INDEXING
 * @expect compile-pass
 * @section 7.2.5
 * @design 索引表达式基本编译通过：数组索引、字符串索引、嵌套索引
 * @note 正向用例：验证 Indexing Expressions 编译通过
 */
let arr: int[] = [10, 20, 30]
let s: string = "hello"

let v1: int = arr[0]
let v2: int = arr[1 + 1]
let c: string = s[0]
let v3: int = arr[arr[0]]
