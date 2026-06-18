/**
 * @id STM_08_12_009_FAIL_return_at_top_level
 * @expect compile-fail
 * @section 8.12
 * @design return 语句在顶层（非函数/方法体内）应产生编译错误 — STATEMENTS.md: "top-level statements cannot contain a return statement"
 * @note 反向用例：顶层 return → Syntax error ESY0163 return keyword should be used in function body
 */
return
