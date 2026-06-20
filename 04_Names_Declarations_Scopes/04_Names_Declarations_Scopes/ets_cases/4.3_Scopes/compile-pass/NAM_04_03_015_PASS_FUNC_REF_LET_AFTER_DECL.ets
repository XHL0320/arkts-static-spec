/**
 * @id NAM_04_03_015_PASS_FUNC_REF_LET_AFTER_DECL
 * @expect compile-pass
 * @section 4.3
 * @cross-language AMBIGUITY 跨语言歧义用例
 * @design 函数 hoisting 可引用声明点之后的 let 变量
 * @note 正向用例：spec 4.3 行299-300：函数在整个模块作用域可访问，
 *       但 let/const 变量从声明点开始才可访问。由于函数体在调用时才求值，
 *       函数内引用声明点之后的 let 变量是合法的（ECMAScript 标准行为）。
 *
 * CROSS-LANGUAGE COMPARISON (ArkTS / Java / Swift — 此类行为极易产生歧义):
 * ┌───────────┬──────────────────────────────────────────┐
 * │ ArkTS     │ ✓ 合法。函数声明整体 hoisting，函数体在     │
 * │           │   调用时才求值，届时 let 已初始化完毕。      │
 * │           │   注：若在 let 声明前调用函数则运行时报 TDZ  │
 * ├───────────┼──────────────────────────────────────────┤
 * │ Java      │ ✓ 合法。方法可前向引用类中任意其他方法或字段。│
 * ├───────────┼──────────────────────────────────────────┤
 * │ Swift     │ ✗ 非法。变量必须先声明后使用，函数体内引用   │
 * │           │   未声明标识符报 "use of unresolved identifier"。│
 * └───────────┴──────────────────────────────────────────┘
 *
 * GAP ANALYSIS (原设为 compile-fail，经测试发现编译器通过):
 *   类型 4（Hoisting 消解前向引用）— 函数 hoisting 使函数体内引用
 *   "声明点之后的 let" 变为合法。这不是编译器 Bug，而是预期行为：
 *   - 函数 earlyRef 可以在 lateVar 声明之前声明
 *   - earlyRef 体内的 lateVar 引用在调用时才求值
 *   - 只要调用发生在 lateVar 声明之后，就是正确的
 *   - 规范中"变量从声明点可访问"针对的是直接引用，不是函数体内的间接引用
 *
 * GAP DOCUMENTED: 规范说 let 变量从声明点才可访问，但函数 hoisting
 *   使得函数体内可以引用声明点之后的 let；这不是错误。
 *   标记 @cross-language AMBIGUITY：Swift 开发者极易误判为错误。
 */
function earlyRef(): number {
    return lateVar;
}
let lateVar: number = 42;
