/**
 * @id SEM_15_11_04_099
 * @expect compile-fail
 * @section 15.11.4
 * @design 静态方法重载拒绝
 * @note 反向用例
 */
class C { static f(x: int): void {} } function main(): void { C.f(true); }
