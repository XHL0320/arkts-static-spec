/**
 * @id EXP_07_10_01_006_PASS_STATIC_READONLY_INIT_BLOCK
 * @expect compile-pass
 * @section 7.10.1
 * @design 在静态字段初始化器中设置 readonly 静态字段：readonly 字段可在声明时通过初始化器赋值
 * @note 正向用例：验证 readonly 静态字段通过声明初始化器（field initializer）赋值
 */
class AppConfig {
    static readonly APP_NAME: string = "MyApp"
    static readonly VERSION: string = "1.0.0"
    static readonly MAX_CONNECTIONS: int = 100
}
let nameCheck: string = AppConfig.APP_NAME
let versionCheck: string = AppConfig.VERSION
