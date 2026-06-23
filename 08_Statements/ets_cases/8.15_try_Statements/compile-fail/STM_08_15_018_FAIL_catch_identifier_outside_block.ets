/**
 * @id STM_08_15_018_FAIL_catch_identifier_outside_block
 * @expect compile-fail
 * @section 8.15
 * @design 验证 catch(e) 中的标识符 e 在 catch 块外部赋值和使用均产生编译错误
 * @note catch(e) 声明的 e 作用域严格限制在 catch 子句的块内部，在 finally 块或 try 语句之后的代码中引用均非法
 */
function testCatchIdentifierOutsideBlock(): void {
    let x: int = 0;
    try {
        x = 1;
    } catch (e) {
        x = 2;
    }
    // catch identifier e is out of scope - assigning to it outside catch must fail
    e = 3;
}
