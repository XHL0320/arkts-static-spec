/**
 * @id EXP_07_05_01_023_FAIL_UNION_CONTEXT_AMBIGUOUS
 * @expect compile-fail
 * @section 7.5.1
 * @design Union 类型上下文歧义：number[] | [number, number] = [1, 2] 两者皆可
 * @note 反向用例：union 中多个成员匹配数组字面量应报编译时错误
 *       number[] 和 [number, number] 都接受 [1, 2]
 */
let union_2: number[] | [number, number] = [1, 2]
