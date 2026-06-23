/**
 * @id SEM_15_01_08_001
 * @expect compile-pass
 * @section 15.1.8
 * @design 语义基础总结：综合表达式验证
 * @note 正向用例：多种类型的表达式综合验证
 */
function main(): void {
    let x: int = 10;
    let y: string = "hello";
    let z: boolean = true;
    console.log(`${x} ${y} ${z}`);
}
