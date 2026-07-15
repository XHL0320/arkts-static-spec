/**
 * @id GEN_05_01_01_008_PASS_CONSTRAINT_ARRAY_TYPE
 * @expect compile-pass
 * @section 5.1.1
 * @design 数组类型作为类型参数约束
 * @note spec: constraint can have the form of any type
 */
class G008<T extends number[]> {}