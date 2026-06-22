/**
 * @id SEM_15_07_01_003
 * @expect compile-pass
 * @section 15.7.1
 * @design 验证 const 声明常量表达式计算：编译期常量可参与表达式
 * @note 正向用例：const 常量在编译期求值
 */
function main(): void {
    const a: int = 100;
    const b: int = a * 2;
    let c: int = b + 1;
    console.log(`c=${c}`);
}
