/**
 * @id CLS_09_03_1_017_FAIL_GETTER_TYPE_MISMATCH
 * @expect compile-fail
 * @section 9.3.1
 * @design getter返回类型与接口属性类型不匹配
 * @note spec: get n(): string where I has n:number → CTE
 */
interface I017 { n: number }
class C017 implements I017 { get n(): string { return "" } }
