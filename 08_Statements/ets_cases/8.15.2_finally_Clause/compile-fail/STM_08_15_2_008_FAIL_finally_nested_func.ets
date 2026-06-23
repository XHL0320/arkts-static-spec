/**
 * @id STM_08_15_2_008_FAIL_finally_nested_func
 * @expect compile-fail
 * @section 8.15.2
 * @design 在finally块中定义嵌套函数，违反ArkTS无嵌套函数的约束。验证编译器能检测finally作用域中的非法函数定义。
 * @note 负向测试：finally中嵌套函数应产生编译错误
 */
function testFinallyNestedFunc(): void {
    try {
        let x: number = 1;
    } finally {
        function helper(): void {
            console.log("nested");
        }
    }
}
