/**
 * @id SEM_15_13_001
 * @expect compile-pass
 * @section 15.13.1
 * @design 验证静态初始化安全性：静态变量初始化顺序正确
 * @note 正向用例：静态字段引用前一声明的静态字段
 */
class Config {
    static base: int = 10;
    static derived: int = Config.base * 2;
}
function main(): void {
    let v: int = Config.derived;
    console.log(`${v}`);
}
