/**
 * @id NAM_04_05_025_RUNTIME_TYPE_ALIAS_USE
 * @expect runtime
 * @section 4.5
 * @design 类型别名通过编译并在运行时使用
 * @note 运行时用例：验证类型别名在使用时行为正确
 */
type MyInt = number;
function main(): void {
    let x: MyInt = 42;
    if (x != 42) throw new Error("assertion failed: " + x);
}
