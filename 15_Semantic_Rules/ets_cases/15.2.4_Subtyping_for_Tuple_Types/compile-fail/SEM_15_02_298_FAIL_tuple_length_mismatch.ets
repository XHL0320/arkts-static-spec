/**
 * @id SEM_15_02_298_FAIL_tuple_length_mismatch
 * @expect compile-fail
 * @section 15.2.4
 * @design 更短元组不是更长元组的子类型（需要 n >= m）
 * @note 来自规范 15.2.4 例：t2 = t1 编译错误
 */
function main(): void {
    let t1: [number] = [42]
    let t2: [string, number] = ["hello", 42]
    t2 = t1
}
