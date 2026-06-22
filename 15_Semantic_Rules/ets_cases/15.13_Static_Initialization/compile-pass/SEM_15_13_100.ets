/**
 * @id SEM_15_13_100
 * @expect compile-pass
 * @section 15.13
 * @design 静态初始化基础
 * @note 正向用例
 */
class Config { static val: int = 42; }
function main(): void {
    let v: int = Config.val;
    console.log(`${v}`);
}
