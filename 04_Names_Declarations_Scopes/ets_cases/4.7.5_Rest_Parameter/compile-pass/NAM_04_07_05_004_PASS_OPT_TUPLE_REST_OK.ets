/**
 * @id NAM_04_07_05_004_PASS_OPT_TUPLE_REST_OK
 * @expect compile-pass
 * @section 4.7.5
 * @design 可选元组+rest元组合法调用
 * @note 正向用例：验证 g([1,"str"], 1, "str") 同时提供可选和rest参数编译通过（spec 4.7.5 行1210）
 */
function g(opt?: [number, string], ...tail: [number, string]) {}
g([1, "str"], 1, "str")
