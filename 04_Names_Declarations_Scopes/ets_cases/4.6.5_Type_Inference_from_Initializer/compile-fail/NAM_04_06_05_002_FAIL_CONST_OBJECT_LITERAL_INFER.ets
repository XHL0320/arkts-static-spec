/**
 * @id NAM_04_06_023_FAIL_CONST_OBJECT_LITERAL_INFER
 * @expect compile-fail
 * @section 4.6.5
 * @design const 声明对象字面量类型推断失败
 * @note 反向用例：验证对象字面量类型不能被推断，无论 let/const
 *       规范 4.6.5
 */
const obj = { name: "test" };
