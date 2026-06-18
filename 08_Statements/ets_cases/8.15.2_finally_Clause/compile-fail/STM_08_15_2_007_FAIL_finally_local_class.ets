/**
 * @id STM_08_15_2_007_FAIL_finally_local_class
 * @expect compile-fail
 * @section 8.15.2
 * @design 在finally块中定义局部类，违反ArkTS无局部类的约束。验证编译器能检测finally作用域中的非法类定义。
 * @note 负向测试：finally中定义类应产生编译错误
 */
function testFinallyLocalClass(): void {
    try {
        let x: number = 1;
    } finally {
        class LocalData {
            value: number = 0;
        }
    }
}
