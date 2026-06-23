/**
 * @id NAM_04_05_01_001_RUNTIME_TYPE_ALIAS_USE
 * @expect runtime
 * @section 4.5.1
 * @design 类型别名运行时使用
 * @note 运行时用例：验证通过别名使用类型的运行时行为正确
 */
type MyNum = number;
function main(): void {
    let a: MyNum = 42;
    if (a != 42) {
        throw new Error("assertion failed: " + a);
    }
    console.log("verified");
}
