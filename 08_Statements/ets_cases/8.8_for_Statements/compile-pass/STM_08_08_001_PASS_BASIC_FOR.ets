/**
 * @id STM_08_08_001_PASS_BASIC_FOR
 * @expect compile-pass
 * @section 8.8
 * @design 基础 for 循环，forInit 中声明新变量 i 并显式指定 int 类型
 * @note 正向用例：for (let i: int = 0; i < 10; i++) { ... }
 */
function testBasicFor(): void {
    let sum: int = 0
    for (let i: int = 0; i < 5; i++) {
        sum = sum + i
    }
}
