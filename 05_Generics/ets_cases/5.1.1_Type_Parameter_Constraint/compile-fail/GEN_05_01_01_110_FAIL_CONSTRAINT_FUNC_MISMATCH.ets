/**
 * @id GEN_05_01_01_110_FAIL_CONSTRAINT_FUNC_MISMATCH
 * @expect compile-fail
 * @section 5.1.1
 * @design 函数类型约束不满足应报错
 * @note int 不满足 () => void 约束
 */
class G110<T extends () => void> {}
let x110: G110<int>