/**
 * @id SEM_15_02_100
 * @expect compile-pass
 * @section 15.2
 * @design 子类型基础：类型自身子类型
 * @note 正向用例
 */
class A { x: int = 0; }
function main(): void {
    let a1: A = new A();
    let a2: A = a1;
    console.log(`${a2.x}`);
}
