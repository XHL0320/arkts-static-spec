/**
 * @id SEM_15_02_09_001_PASS_diff_self_assign
 * @expect compile-pass
 * @section 15.2.9
 * @design 差分类型自身赋值
 * @note 正向用例：int 类型赋值自身
 */
function main(): void {
    let x: int = 42;
    console.log("ok");
}
