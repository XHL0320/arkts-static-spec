/**
 * @id STM_08_09_020_PASS_for_of_const_variable
 * @expect compile-pass
 * @section 8.9
 * @design 使用const声明forVariable（无类型注解），验证const变量不可在循环体内赋值且类型正确推断
 * @note const修饰的forVariable禁止在循环体内赋值，但只读访问元素值应编译通过
 */
function testForOfConstVariable(): void {
    let arr: Array<int> = [1, 2, 3];
    let sum: int = 0;
    for (const x of arr) {
        sum += x;
    }
}
