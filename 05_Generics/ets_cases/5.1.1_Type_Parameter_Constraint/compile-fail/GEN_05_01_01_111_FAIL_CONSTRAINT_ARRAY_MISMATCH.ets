/**
 * @id GEN_05_01_01_111_FAIL_CONSTRAINT_ARRAY_MISMATCH
 * @expect compile-fail
 * @section 5.1.1
 * @design 数组类型约束不满足应报错
 * @note string 不满足 number[] 约束
 */
class G111<T extends number[]> {}
let x111: G111<string>