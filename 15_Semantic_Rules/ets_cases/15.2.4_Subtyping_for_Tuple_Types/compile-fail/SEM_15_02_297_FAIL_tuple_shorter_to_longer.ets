/**
 * @id SEM_15_02_297_FAIL_tuple_shorter_to_longer
 * @expect compile-fail
 * @section 15.2.4
 * @design 更短元组不是更长元组的子类型：需 n >= m
 * @note 来自规范 15.2.4 例：d = e（shorter to longer）编译错误
 */
function main(): void {
    let d: [string, number, boolean] = ["a", 1, true]
    let e: [string, number] = d
    d = e
}
