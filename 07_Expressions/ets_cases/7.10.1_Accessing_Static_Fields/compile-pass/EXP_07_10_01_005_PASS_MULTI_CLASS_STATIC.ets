/**
 * @id EXP_07_10_01_005_PASS_MULTI_CLASS_STATIC
 * @expect compile-pass
 * @section 7.10.1
 * @design 多类静态字段独立访问：不同类的静态字段通过各自类名访问
 * @note 正向用例：验证不同类的静态字段相互独立，通过类名区分
 */
class Logger {
    static level: int = 2
    static tag: string = "APP"
}
class Database {
    static poolSize: int = 10
    static timeout: int = 5000
}
let logLevel: int = Logger.level
let dbTimeout: int = Database.timeout
let dbPool: int = Database.poolSize
