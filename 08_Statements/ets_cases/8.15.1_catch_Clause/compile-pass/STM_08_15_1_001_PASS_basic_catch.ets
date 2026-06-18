/**
 * @id STM_08_15_1_001_PASS_basic_catch
 * @expect compile-pass
 * @section 8.15.1
 * @design 验证基本的 try-catch 结构编译通过。catch 子句捕获 Error 类型对象，在块内访问 error 对象。
 * @note 正向测试：最基本的 catch 语法结构，try 后跟 catch (e) 块，标识符 e 类型为 Error。
 */
function testBasicCatch(): void {
    try {
        throw new Error("basic error");
    } catch (e) {
        let msg: string = (e as Error).message;
    }
}
