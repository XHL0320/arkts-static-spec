/**
 * @id STM_08_09_013_PASS_const_with_type_annotation
 * @expect compile-pass
 * @section 8.9
 * @design for-of使用const声明forVariable并附加显式类型注解，验证类型注解作为实验特性被接受
 * @note 显式类型注解是允许的实验特性，const禁止在循环体内赋值，类型注解与推断类型一致时编译通过
 */
function testConstWithTypeAnnotation(): void {
    let arr: Array<int> = [1, 2, 3];
    let sum: int = 0;
    for (const x: int of arr) {
        sum += x;
    }
}
