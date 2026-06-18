/**
 * @id STM_08_15_2_004_PASS_finally_no_catch
 * @expect compile-pass
 * @section 8.15.2
 * @design 测试没有catch块、仅有try-finally的结构。try块正常执行后，finally块执行。验证try-finally（无catch）语法在编译器中正确识别。
 * @note 正向测试：不含catch的try-finally结构，验证简化的异常处理框架编译通过
 */
function testFinallyNoCatch(): void {
    let list: number[] = [10, 20, 30];
    let idx: number = 0;
    try {
        idx = list[0];
    } finally {
        idx = idx + 1;
    }
    if (idx != 11) {
        console.log("FAIL: idx should be 11 but got " + idx);
    }
}
