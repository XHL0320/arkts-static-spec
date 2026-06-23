/**
 * @id SEM_15_02_07_002_PASS_fixed_array_self_assign
 * @expect compile-pass
 * @section 15.2.7
 * @design FixedArray 自身赋值：相同类型的 FixedArray 可互相赋值
 * @note 正向用例：FixedArray<int> 类型实例可赋值给同类型变量
 */
function main(): void {
    let a: FixedArray<int> = new FixedArray<int>(3);
    a[0] = 1;
    console.log("ok");
}
