/**
 * @id EXP_07_06_01_004_PASS_SKIP_EXPLICIT_INITIALIZER
 * @expect compile-pass
 * @section 7.6.1
 * @design 跳过有显式初始化的字段：class C { f1: number = 100; f2: string = "hello" }，let c: C = {} 合法
 * @note 正向用例：验证显式初始化字段可以在对象字面量中跳过
 */
class C {
    f1: number = 100
    f2: string = "hello"
}
let c: C = {}
