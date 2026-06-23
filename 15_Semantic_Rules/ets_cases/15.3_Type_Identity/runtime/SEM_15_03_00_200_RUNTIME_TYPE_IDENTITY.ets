/**
 * @id SEM_15_03_00_200_RUNTIME_TYPE_IDENTITY
 * @expect runtime
 * @section 15.3
 * @design 验证类型同一性运行时行为：别名类型与原始类型同一
 * @note 运行时用例：MyInt 和 int 是同一类型，运行时值一致
 */
type MyInt = int;
function main(): void {
    let x: MyInt = 42;
    let y: int = x;
    if (y != 42) { throw new Error("assertion failed"); }
    console.log("verified");
}
