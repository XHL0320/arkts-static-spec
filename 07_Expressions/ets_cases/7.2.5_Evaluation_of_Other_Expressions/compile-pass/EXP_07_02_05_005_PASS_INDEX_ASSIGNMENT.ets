/**
 * @id EXP_07_02_05_005_PASS_INDEX_ASSIGNMENT
 * @expect compile-pass
 * @section 7.2.5
 * @design 索引赋值表达式基本编译通过：简单赋值 arr[i]=val、复合赋值 arr[i]+=val
 * @note 正向用例：验证 Assignments Involving Indexing 编译通过
 */
let arr: int[] = [0, 0, 0]

arr[0] = 10
arr[1] = arr[0] + 5
arr[2] += 3
arr[0] = arr[1] + arr[2]
