/**
 * @id SEM_15_09_002
 * @expect compile-fail
 * @section 15.9.1
 * @design 验证覆写返回类型不匹配拒绝
 * @note 反向用例：覆写方法返回类型与父类不兼容
 */
class Base { process(x: int): int { return x; } }
class Derived extends Base { override process(x: int): string { return ""; } }
function main(): void {}
