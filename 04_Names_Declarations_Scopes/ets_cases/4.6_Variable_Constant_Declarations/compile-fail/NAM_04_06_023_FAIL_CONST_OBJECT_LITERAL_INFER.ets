/**
 * @id NAM_04_06_023_FAIL_CONST_OBJECT_LITERAL_INFER
 * @expect compile-fail
 * @section 4.6.5
 * @design const 声明对象字面量类型推断失败
 * @note 反向用例：spec 4.6.5 行832 let f = {name: "aa"} 编译错误。
 *       但 const 下 spec 说 "retain literal types"（行838 const s2 类型是 "1"）。
 *       问题：const 的对象字面量也会报同样错误吗？还是 const 有不同处理？
 *
 * GAP POTENTIAL: 类型 3（类型推断消解）— const 的 literal type retention
 *       策略可能让编译器对 const obj = {name: "aa"} 推断出常量类型
 *       而非报错。这将是规范约束下的实现偏差。
 *
 * SPEC EXPECTS: 对象字面量类型不能被推断，无论 let/const。
 * COMPILER BEHAVIOR: const 可能推断出 {name: "aa"} 类型。
 */
const obj = { name: "test" };
