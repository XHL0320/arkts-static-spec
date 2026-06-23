/**
 * @id EXP_07_02_05_002_PASS_ARRAY_CREATION
 * @expect compile-pass
 * @section 7.2.5
 * @design 可伸缩数组创建表达式基本编译通过：数组字面量、new Array<int> 两种方式
 * @note 正向用例：验证 Resizable Array Creation Expressions 编译通过
 */
let a1: int[] = [1, 2, 3]
let a2: Array<int> = new Array<int>()
let a3: string[] = ["x", "y", "z"]
let a4: boolean[] = [true, false, true]
