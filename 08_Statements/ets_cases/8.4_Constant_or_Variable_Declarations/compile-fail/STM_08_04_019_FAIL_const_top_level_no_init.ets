/**
 * @id STM_08_04_019_FAIL_const_top_level_no_init
 * @expect compile-fail
 * @section 8.4
 * @design const 在模块顶层声明缺少初始化器 — STATEMENTS.md: constant declaration has initialization part
 * @note 反向用例：模块顶层 const 无初始化器 → 编译错误
 */
const x: int
