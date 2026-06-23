/**
 * @id STM_08_01_002_PASS_abrupt_in_try_catch
 * @expect compile-pass
 * @section 8.1
 * @design 验证 try-catch 结构处理异常完成的编译通过：throw语句在try块中产生异常完成，被catch捕获
 * @note 异常完成由 throw 触发，try-catch 是处理异常完成的标准方式
 */
function testTryCatchAbrupt(): void {
    let caught: boolean = false;
    let result: int = 0;
    try {
        result = 1;
        throw new Error("test abrupt");
    } catch (e) {
        caught = true;
    }
    // after try-catch, normal completion resumes
    result = 2;
}

function testTryCatchFinally(): void {
    let cleaned: boolean = false;
    let caught: boolean = false;
    try {
        throw new Error("error");
    } catch (e) {
        caught = true;
    } finally {
        cleaned = true;
    }
}
