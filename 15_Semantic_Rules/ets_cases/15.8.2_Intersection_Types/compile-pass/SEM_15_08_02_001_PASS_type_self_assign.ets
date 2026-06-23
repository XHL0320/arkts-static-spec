/**
 * @id SEM_15_08_02_001_PASS_type_self_assign
 * @expect compile-pass
 * @section 15.8.2
 * @design 交集类型自身赋值
 * @note 正向用例：int 类型变量赋值自身
 */
function main(): void {
    let x: int = 1;
    console.log("ok");
}
