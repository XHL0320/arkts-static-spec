/**
 * @id GEN_05_02_02_103_PASS_PROVABLY_DISTINCT_DIFF_DECL
 * @expect compile-pass
 * @section 5.2.2
 * @design 不同泛型声明的实例化可证明不同
 * @note spec: provably distinct if parameterizations of distinct generic declarations
 */
class G103a<T> {}
class H103a<T> {}
let x103a: G103a<number> = new G103a<number>()
let y103a: H103a<number> = new H103a<number>()