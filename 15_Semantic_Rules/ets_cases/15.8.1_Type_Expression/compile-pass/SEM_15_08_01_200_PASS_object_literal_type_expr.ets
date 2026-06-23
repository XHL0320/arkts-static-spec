/**
 * @id SEM_15_08_01_200_PASS_object_literal_type_expr
 * @expect compile-pass
 * @section 15.8.1
 * @design 规范 15.8.1：Object|C类型表达式上下文中的对象字面量
 * @note 正向用例：foo({num:42})推断对象字面量为C类型
 */
class C {
    num: int = 1;
}
function foo(x: Object | C): void {}
function main(): void {
    foo({num: 42});
}
