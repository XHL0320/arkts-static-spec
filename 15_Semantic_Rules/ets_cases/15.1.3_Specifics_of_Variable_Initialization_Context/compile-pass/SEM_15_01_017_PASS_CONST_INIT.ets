/**
 * @id SEM_15_01_017
 * @expect compile-pass
 * @section 15.1.3
 * @design 验证 const 声明初始化类型推断
 * @note 正向用例：const 从字面量初始化推断为字面量类型
 */
function main(): void {
    const a = 100;
    const b = "hello";
    let x: int = a;
    let y: string = b;
    console.log(`${x} ${y}`);
}
