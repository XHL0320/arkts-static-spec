/**
 * @id SEM_15_13_099
 * @expect compile-fail
 * @section 15.13
 * @design 静态初始化无效引用
 * @note 反向用例
 */
class C { static a: int = C.b; static b: int = 1; }
function main(): void {}
