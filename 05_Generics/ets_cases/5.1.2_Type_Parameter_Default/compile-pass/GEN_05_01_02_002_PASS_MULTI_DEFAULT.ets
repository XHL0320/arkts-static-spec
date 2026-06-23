/**
 * @id GEN_05_01_02_002_PASS_MULTI_DEFAULT
 * @expect compile-pass
 * @section 5.1
 * @design 多参数部分默认
 * @note 正向用例：验证多类型参数部分有默认值
 */
class C2<T1, T2 = number, T3 = string> {}
let c1: C2<number> = new C2<number>();
let c2: C2<number, string> = new C2<number, string>();
