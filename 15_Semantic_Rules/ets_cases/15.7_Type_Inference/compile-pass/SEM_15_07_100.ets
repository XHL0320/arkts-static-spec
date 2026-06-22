/**
 * @id SEM_15_07_100
 * @expect compile-pass
 * @section 15.7
 * @design 类型推断：从初始化器推断类型
 * @note 正向用例
 */
function main(): void {
    let x = 42;
    let y = "infer";
    let z: int = x;
    let w: string = y;
    console.log(`${z} ${w}`);
}
