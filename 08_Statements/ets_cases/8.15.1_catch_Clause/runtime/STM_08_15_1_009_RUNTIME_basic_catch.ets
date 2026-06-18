/**
 * @id STM_08_15_1_009_RUNTIME_basic_catch
 * @expect runtime
 * @section 8.15.1
 * @design 验证 catch 子句在运行时正确捕获抛出的 Error 对象，并获取 error.message 属性值。
 * @note 运行时测试：throw new Error("caught") 后，catch 块执行，验证 error.message 为 "caught"。
 */
function main(): void {
    let caught: boolean = false;
    let msg: string = "";
    try {
        throw new Error("runtime catch test");
    } catch (e) {
        caught = true;
        msg = e.message;
    }
    if (caught != true) {
        throw new Error("catch block was not executed");
    }
    if (msg != "runtime catch test") {
        throw new Error("error message mismatch: " + msg);
    }
    console.log("verified");
}
