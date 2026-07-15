/**
 * @id GEN_05_02_02_104_PASS_PROVABLY_DISTINCT_DIFF_ARG
 * @expect compile-pass
 * @section 5.2.2
 * @design 同一声明不同类型实参可证明不同
 * @note spec: provably distinct if any type argument is provably distinct
 */
class G104a<T> {}
let x104a: G104a<number> = new G104a<number>()
let y104a: G104a<string> = new G104a<string>()