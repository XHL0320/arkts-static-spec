/**
 * @id NAM_04_04_002_PASS_FUNC_ACCESSIBLE
 * @expect compile-pass
 * @section 4.4
 * @design 函数名可访问用于调用
 * @note 正向用例：验证可访问的函数名用于调用
 */
function greet(name: string): string {
    return "Hello " + name;
}
let msg: string = greet("World");
