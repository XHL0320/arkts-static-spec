/**
 * @id GEN_05_02_014_FAIL_FUNC_PARAM_VARIANCE
 * @expect compile-fail
 * @section 5.2
 * @cross-language AMBIGUITY 跨语言歧义用例
 * @design out 类型参数出现在回调函数参数位置（嵌套 in-position）
 * @note 反向用例：验证 out T 不可出现在方法参数中回调函数的参数类型位置。
 *       这是 GEN_05_02_015（out T 在 ()=>T 返回位置）的对称用例。
 *
 * SPEC EXPECTS: 5.1.3 行303 — out 类型参数不得用于 in-position。
 *               (item: T) => void 中 T 在回调参数位置，属于嵌套 in-position。
 *
 * COMPILER BEHAVIOR: 编译器未报告错误——编译通过。
 *   变体检查似乎只作用于直接的成员签名，未递归检查回调/函数类型参数内部。
 *
 * CROSS-LANGUAGE COMPARISON (ArkTS / Java / Swift — 声明点 vs 使用点变体):
 * ┌───────────┬──────────────────────────────────────────┐
 * │ ArkTS     │ 声明点变体：out/in 在类声明时固定。        │
 * │           │   编译器当前未检查回调参数内部的变体违规。  │
 * ├───────────┼──────────────────────────────────────────┤
 * │ Java      │ 使用点变体：? extends / ? super 在引用点。 │
 * │           │   回调参数处可使用 ? super 标注逆变。       │
 * ├───────────┼──────────────────────────────────────────┤
 * │ Swift     │ 声明点变体：与 ArkTS 类似但无回调参数变体   │
 * │           │   约束，Swift 不支持声明点 in 变体。        │
 * └───────────┴──────────────────────────────────────────┘
 *
 * GAP ANALYSIS:
 *   类型 5（语法糖消解语义约束）— 回调函数类型 (item: T) => void
 *   在 Parser 中被 desugar 为函数类型对象。变体检查发生在 desugar 之前，
 *   只检查直接成员签名的参数/返回类型，不递归进入回调参数内部。
 *
 * GAP DOCUMENTED: 规范要求 out T 不得出现在任何 in-position（含嵌套），
 *   编译器仅检查直接成员签名位置，未递归检查回调函数参数内部。
 *   标记 @cross-language AMBIGUITY：Java 开发者用使用点变体可能不理解此限制。
 */
class Container<out T> {
    constructor(v: T) {}
    // T 出现在回调函数参数位置 = in-position 嵌套
    // 规范要求应报错，编译器当前未检测
    forEach(callback: (item: T) => void): void {}
}
