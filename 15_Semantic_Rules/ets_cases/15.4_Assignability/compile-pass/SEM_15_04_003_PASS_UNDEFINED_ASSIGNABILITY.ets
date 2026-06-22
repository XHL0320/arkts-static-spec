/**
 * @id SEM_15_04_003
 * @expect compile-pass
 * @section 15.4
 * @design 验证 undefined 可赋值性：undefined 可赋值给含 undefined 的联合类型
 * @note 正向用例：int|undefined 类型的变量可接受 undefined 值
 */
function main(): void {
    let x: int | undefined;
    x = undefined;
    let y: int | undefined = x;
    console.log(`y=${y}`);
}
