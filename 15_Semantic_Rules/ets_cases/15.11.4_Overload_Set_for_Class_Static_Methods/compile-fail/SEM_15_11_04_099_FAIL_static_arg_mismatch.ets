/**
 * @id SEM_15_11_04_099
 * @expect compile-fail
 * @section 15.11.4
 * @design 静态方法重载拒绝：参数不匹配
 * @note 反向用例：boolean 不匹配静态方法 int 参数
 */
class C { static f(x: int): void {} }
function main(): void {
    C.f(true);
}
