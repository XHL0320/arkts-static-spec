/**
 * @id GEN_05_02_026_PASS_TYPE_ALIAS_VARIANCE
 * @expect compile-pass
 * @section 5.2
 * @design 类型别名上的 out/in 修饰被接受【设计问题：语义不明确】
 * @note out/in 在类型别名上无实际约束效果，编译器静默接受。Swift 不允许对 typealias 使用 variance。
 */
type Wrapper<out T> = T;
let a: Wrapper<number> = 42;
