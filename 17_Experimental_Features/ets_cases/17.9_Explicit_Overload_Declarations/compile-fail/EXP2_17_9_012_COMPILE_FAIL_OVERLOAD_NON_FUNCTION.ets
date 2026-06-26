/**
 * @id EXP2_17_9_012_COMPILE_FAIL_OVERLOAD_NON_FUNCTION
 * @expect compile-fail
 * @section 17.9
 * @design 验证 overload 修饰非函数实体——应报编译错误
 * @note 反向用例：overload 关键字只能修饰函数/方法/构造器，修饰变量应报错
 */
let x: int = 0
overload function broken(a: int): void {}
overload function broken(a: string): void {}

function main(): void {}
