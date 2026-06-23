/**
 * @id LEX_02_03_046_FAIL_DECORATOR_SPACE
 * @expect compile-fail
 * @section 2.3
 * @design 装饰器中空格
 * @note compile-fail 用例：验证编译器拒绝 @ 和名称之间有空格
 */

// @ 和名称之间有空格，编译失败
@ Entry
function main(): void {
}
