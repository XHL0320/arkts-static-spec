/**
 * @id SEM_15_10_02_099
 * @expect compile-fail
 * @section 15.10.2
 * @design 方法重载不可区分拒绝
 * @note 反向用例：仅返回值不同的重载方法应报错
 */
class C { foo(x: int): string { return ""; } foo(x: int): int { return 0; } }
function main(): void {}
