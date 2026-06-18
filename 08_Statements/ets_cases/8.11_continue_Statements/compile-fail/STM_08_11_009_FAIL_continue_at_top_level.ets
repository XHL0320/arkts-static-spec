/**
 * @id STM_08_11_009_FAIL_continue_at_top_level
 * @expect compile-fail
 * @section 8.11
 * @design continue 语句在顶层（非循环内）应产生编译错误 — STATEMENTS.md: "If there is no enclosing loopStatement... then a compile-time error occurs"
 * @note 反向用例：顶层 continue → Syntax error ESY0165 Illegal continue statement + Semantic error ESE0161
 */
continue
