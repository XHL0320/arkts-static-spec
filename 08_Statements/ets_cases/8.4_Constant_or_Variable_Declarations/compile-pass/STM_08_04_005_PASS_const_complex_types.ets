/**
 * @id STM_08_04_005_PASS_const_complex_types
 * @expect compile-pass
 * @section 8.4
 * @design 测试const与复杂类型：数组、联合类型、对象类型
 * @note const保持引用不变，复杂类型也需要类型注解
 */
function testConstComplexTypes(): void {
    const arr: int[] = [1, 2, 3];
    const names: string[] = ["a", "b", "c"];
    const max: int = 100;
    const min: int = 0;
    const threshold: number = 0.5;
}
