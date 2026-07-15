/**
 * @id GEN_05_01_01_007_PASS_CONSTRAINT_FUNC_TYPE
 * @expect compile-pass
 * @section 5.1.1
 * @design 函数类型作为类型参数约束
 * @note spec: constraint can have the form of any type
 */
class G007<T extends () => void> {}