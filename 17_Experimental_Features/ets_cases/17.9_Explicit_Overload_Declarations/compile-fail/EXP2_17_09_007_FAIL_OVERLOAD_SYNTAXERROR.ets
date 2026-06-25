/**
 * @id EXP2_17_09_007_FAIL_OVERLOAD_SYNTAXERROR
 * @expect compile-fail
 * @section 17.9
 * @design overload 声明语法错误
 * @note 反向用例：尝试使用无效语法声明 overload
 */
function foo(a: int): int { return a }
// 尝试引用非函数实体 — 应编译失败
class NotAFunc {}
overload bad { foo, NotAFunc }
