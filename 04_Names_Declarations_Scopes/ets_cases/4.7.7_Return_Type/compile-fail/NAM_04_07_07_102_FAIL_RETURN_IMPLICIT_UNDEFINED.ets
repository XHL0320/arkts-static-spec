/**
 * @id NAM_04_07_07_102_FAIL_RETURN_IMPLICIT_UNDEFINED
 * @expect compile-fail
 * @section 4.7.7
 * @design 非 void/undefined 返回类型的空函数体
 * @note 反向用例：验证空函数体 + 非 void 返回类型编译错误
 *       规范 4.7.7 — 执行路径无 return/throw 语句时报错
 */
function emptyBody(): number {}
