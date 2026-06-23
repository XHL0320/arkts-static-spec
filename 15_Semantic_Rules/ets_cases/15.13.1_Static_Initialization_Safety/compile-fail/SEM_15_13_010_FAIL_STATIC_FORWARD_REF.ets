/**
 * @id SEM_15_13_010_FAIL_STATIC_FORWARD_REF
 * @expect compile-fail
 * @section 15.13.1
 * @design 验证静态初始化前向引用拒绝
 * @note 反向用例：静态字段在声明前引用应报错
 */
class BadConfig {
    static derived: int = BadConfig.base * 2;
    static base: int = 10;
}
function main(): void {}
