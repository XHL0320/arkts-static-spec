/**
 * @id SEM_15_08_01_102_FAIL_object_literal_no_field
 * @expect compile-fail
 * @section 15.8.1
 * @design 规范 15.8.1：Object类型上下文中对象字面量不包含num字段
 * @note 反向用例：bar({num:42})中Object没有num字段
 */
class C {
    num: int = 1;
}
function bar(x: Object): void {}
function main(): void {
    bar({num: 42});
}
