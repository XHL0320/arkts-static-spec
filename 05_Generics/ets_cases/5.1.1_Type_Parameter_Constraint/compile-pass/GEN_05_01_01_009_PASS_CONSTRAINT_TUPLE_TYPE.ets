/**
 * @id GEN_05_01_01_009_PASS_CONSTRAINT_TUPLE_TYPE
 * @expect compile-pass
 * @section 5.1.1
 * @design tuple类型作为类型参数约束
 * @note spec: constraint can have the form of any type
 */
class G009<T extends [number, string]> {}