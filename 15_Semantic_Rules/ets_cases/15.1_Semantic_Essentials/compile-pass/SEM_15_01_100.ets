/**
 * @id SEM_15_01_100
 * @expect compile-pass
 * @section 15.1
 * @design 语义基础：类型注解变量声明
 * @note 正向用例
 */
function main(): void {
    let x: int = 10;
    let y: string = "hello";
    console.log(`${x} ${y}`);
}
