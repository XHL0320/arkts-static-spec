/**
 * @id GEN_05_02_025_FAIL_IN_CALLBACK_RETURN
 * @expect compile-fail
 * @section 5.1.3
 * @design in 类型参数出现在回调函数返回值位置（嵌套 out-position）
 * @note 反向用例：验证 in T 不可出现在方法参数中回调函数的返回值类型位置。
 *       与 GEN_05_02_014 对称——014 测 out 在回调参数位置，025 测 in 在回调返回位置。
 *
 * SPEC EXPECTS: 5.1.3 行309 — in 类型参数不得用于 out-position。
 *               () => T 中 T 在回调返回位置，属于嵌套 out-position。
 *
 * COMPILER BEHAVIOR: 编译器未报告错误——编译通过。
 *   与 GEN_05_02_014 对称，变体检查未递归进入回调函数类型内部。
 *
 * GAP ANALYSIS:
 *   类型 5（语法糖消解语义约束）— ()=>T 中 T 在返回位置，
 *   但嵌套在方法参数类型内部。编译器仅检查外层签名，不展开回调类型。
 *
 * GAP DOCUMENTED: 规范要求 in T 不得出现在任何 out-position（含嵌套），
 *   编译器仅检查直接成员签名位置。(与 GEN_05_02_014 对称 gap)
 */
class Consumer<in T> {
    // T 出现在回调函数返回值位置 = out-position 嵌套
    // 规范要求应报错，编译器当前未检测
    produce(supplier: () => T): void {}
}
