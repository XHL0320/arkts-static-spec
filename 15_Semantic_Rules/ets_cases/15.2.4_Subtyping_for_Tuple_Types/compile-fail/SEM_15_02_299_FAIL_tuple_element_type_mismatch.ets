/**
 * @id SEM_15_02_299_FAIL_tuple_element_type_mismatch
 * @expect compile-fail
 * @section 15.2.4
 * @design 元素类型不同的元组不可互相赋值：[number] 与 [string,number] 无关
 * @note 来自规范 15.2.4 例：t1 = t2 编译错误
 */
function main(): void {
    let t1: [number] = [42]
    let t2: [string, number] = ["hello", 42]
    t1 = t2
}
