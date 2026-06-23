/**
 * @id STM_08_04_013_FAIL_loop_body_shadows_param
 * @expect compile-pass
 * @section 8.4
 * @design 测试for循环体内let声明与函数参数同名编译错误：参数和局部变量在同一作用域导致重复
 * @note 规范：参数和局部变量在同一作用域同名 -> 编译时错误；for循环体内的let视为同一函数作用域
 */
function testLoopBodyShadowsParam(item: boolean): void {
    for (let i: int = 0; i < 10; i = i + 1) {
        let item: int = i;
    }
}
