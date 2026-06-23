/**
 * @id STM_08_15_2_012_PASS_finally_throw_inside
 * @expect compile-pass
 * @section 8.15.2
 * @design 测试finally块内部抛出异常：语句finally子句可在finally块中使用throw语句。验证finally块中的throw是合法的语法形式，可用于finally块中检测到清理失败等场景。
 * @note 正向测试：finally块中的throw为合法语法，代码应正确编译通过
 */
function testFinallyWithThrowInside(): void {
    try {
        let x: number = 1;
        console.log("try block");
    } catch (e) {
        console.log("catch block");
    } finally {
        // throw inside finally: valid syntax for when cleanup itself fails
        throw new Error("cleanup failed in finally");
    }
}

function testFinallyWithThrowNoCatch(): void {
    try {
        let y: number = 2;
    } finally {
        // throw in finally without catch is also valid
        throw new Error("error in finally only");
    }
}
