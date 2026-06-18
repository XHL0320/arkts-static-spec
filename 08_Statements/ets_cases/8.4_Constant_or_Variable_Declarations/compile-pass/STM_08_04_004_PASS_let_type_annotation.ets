/**
 * @id STM_08_04_004_PASS_let_type_annotation
 * @expect compile-pass
 * @section 8.4
 * @design 测试let带显式类型注解的声明
 * @note 类型注解支持int/number/string/boolean等基本类型
 */
function testLetTypeAnnotation(): void {
    let a: int = 42;
    let b: number = 3.14;
    let c: string = "annotation";
    let d: boolean = false;
    let e: long = 10000000000;
    let f: double = 1.5;
}
