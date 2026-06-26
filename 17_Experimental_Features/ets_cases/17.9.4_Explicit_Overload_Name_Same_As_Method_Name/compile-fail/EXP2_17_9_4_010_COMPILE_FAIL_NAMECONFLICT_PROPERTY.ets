/**
 * @id EXP2_17_9_4_010_COMPILE_FAIL_NAMECONFLICT_PROPERTY
 * @expect compile-fail
 * @section 17.9.4
 * @design 验证 overload 名与同作用域属性冲突——应报编译错误
 * @note 反向用例：overload 名不能与同层声明的变量/属性同名
 */
let process: string = "bad"
overload function process(x: int): void {}
overload function process(x: string): void {}

function main(): void {}
