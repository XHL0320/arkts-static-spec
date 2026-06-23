/**
 * @id SEM_15_03_001_PASS_TYPE_ALIAS_IDENTITY
 * @expect compile-pass
 * @section 15.3
 * @design 验证类型别名同一性：type MyInt = int，MyInt 和 int 是同一类型
 * @note 正向用例：类型别名与其展开类型同一，可互相赋值
 */
type MyInt = int;
function main(): void {
    let x: MyInt = 42;
    let y: int = x;
    console.log(`y=${y}`);
}
