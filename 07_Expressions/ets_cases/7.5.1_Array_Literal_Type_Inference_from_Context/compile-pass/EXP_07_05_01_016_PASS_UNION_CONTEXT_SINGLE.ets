/**
 * @id EXP_07_05_01_016_PASS_UNION_CONTEXT_SINGLE
 * @expect compile-pass
 * @section 7.5.1
 * @design Union 类型上下文唯一匹配：string[] | [int, int] = [1, 2] 匹配 tuple
 * @note 正向用例：验证 union 类型中恰好一个成员匹配时编译通过
 */
let union_1: string[] | [int, int] = [1, 2]
