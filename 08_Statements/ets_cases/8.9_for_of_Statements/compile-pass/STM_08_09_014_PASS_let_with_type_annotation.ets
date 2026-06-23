/**
 * @id STM_08_09_014_PASS_let_with_type_annotation
 * @expect compile-pass
 * @section 8.9
 * @design for-of使用let声明forVariable并附加显式类型注解，验证let变量可在循环体内修改
 * @note let修饰的变量允许在循环体内修改，类型注解与推断类型一致时编译通过
 */
function testLetWithTypeAnnotation(): void {
    let arr: Array<int> = [1, 2, 3];
    let sum: int = 0;
    for (let x: int of arr) {
        x = x * 2;
        sum += x;
    }
}
