/**
 * @id STM_08_15_2_001_PASS_basic_finally
 * @expect compile-pass
 * @section 8.15.2
 * @design 测试基本的try-catch-finally结构：try块正常执行，catch块不触发，finally块在try之后执行。验证finally子句在正常完成时能够正确编译和执行。
 * @note 正向测试：基础的try-catch-finally语法结构，代码应正确编译通过
 */
function testBasicFinally(): void {
    let result: number = 0;
    try {
        result = 1;
    } catch (e) {
        result = 2;
    } finally {
        result = 3;
    }
    if (result != 3) {
        console.log("FAIL: result should be 3 but got " + result);
    }
}
