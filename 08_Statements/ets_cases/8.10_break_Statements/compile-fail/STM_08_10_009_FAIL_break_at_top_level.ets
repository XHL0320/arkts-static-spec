/**
 * @id STM_08_10_009_FAIL_break_at_top_level
 * @expect compile-fail
 * @section 8.10
 * @design break 语句在顶层（非循环/switch 内）应产生编译错误 — STATEMENTS.md: "If a break statement is used outside a loopStatement or a switchStatement, then a compile-time error occurs"
 * @note 反向用例：顶层 break → Syntax error ESY0209 Illegal break statement + Semantic error ESE0161
 */
break
