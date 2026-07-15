/**
 * @id GEN_05_01_02_005_PASS_CROSS_REF_DEFAULT_VALID
 * @expect compile-pass
 * @section 5.1.2
 * @design 类型参数默认值可以引用前面已定义的参数
 * @note spec: T2's default is valid as it refers to type parameter T1 already defined
 */
class G005<T1, T2 = T1> {}
