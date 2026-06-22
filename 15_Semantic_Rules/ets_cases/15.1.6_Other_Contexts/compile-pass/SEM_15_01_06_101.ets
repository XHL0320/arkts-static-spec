/**
 * @id SEM_15_01_06_101
 * @expect compile-pass
 * @section 15.1.6
 * @design 其他上下文布尔拼接 - 编译器自动转换
 * @note boolean + string 通过字符串转换合法
 */
function main(): void { let r = true + "str"; console.log(r); }
