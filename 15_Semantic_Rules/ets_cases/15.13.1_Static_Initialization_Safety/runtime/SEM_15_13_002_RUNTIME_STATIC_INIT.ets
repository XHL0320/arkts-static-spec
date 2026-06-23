/**
 * @id SEM_15_13_002_RUNTIME_STATIC_INIT
 * @expect runtime
 * @section 15.13.1
 * @design 验证静态初始化运行时顺序：静态字段按声明顺序初始化
 * @note 运行时用例：静态字段引用的值在运行时正确
 */
class Config {
    static base: int = 10;
    static derived: int = Config.base * 2;
}
function main(): void {
    let v: int = Config.derived;
    if (v != 20) { throw new Error("assertion failed: " + v.toString()); }
    console.log("verified");
}
