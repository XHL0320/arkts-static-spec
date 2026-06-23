/**
 * @id SEM_15_02_299_FAIL_difference_unsupported
 * @expect compile-fail
 * @section 15.2.9
 * @design 差分类型暂不支持—编译器报 ESY145527
 * @note 来自规范 15.2.9 定义（A-B <:T if A <:T），编译器未实现
 */
type Even = int & ~1
function main(): void {
    let v: Even = 2
}
