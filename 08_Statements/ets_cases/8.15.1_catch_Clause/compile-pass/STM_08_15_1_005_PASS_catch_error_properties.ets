/**
 * @id STM_08_15_1_005_PASS_catch_error_properties
 * @expect compile-pass
 * @section 8.15.1
 * @design 验证 catch 块内访问 Error 对象的 message、name 和 stack 属性编译通过。
 * @note 正向测试：catch 标识符类型为 Error，可以访问 Error 标准属性 message、name、stack。
 */
function testCatchErrorProperties(): void {
    try {
        throw new Error("test error");
    } catch (e) {
        let errMsg: string = e.message;
        let errName: string = e.name;
        let errStack: string | undefined = e.stack;
    }
}
