/**
 * @id NAM_04_07_05_103_FAIL_OPT_TUPLE_REST_MISSING
 * @expect compile-fail
 * @section 4.7.5
 * @design 可选元组+rest元组参数缺少rest实参
 * @note 反向用例：验证可选元组参数后跟rest元组，调用时缺少rest实参编译错误（spec 4.7.5 行 1196-1208）
 */
function g(opt?: [number, string], ...tail: [number, string]): void {}

g();                   // Compile-time error: no rest tuple
g([1, "str"]);         // Compile-time error: no rest tuple
