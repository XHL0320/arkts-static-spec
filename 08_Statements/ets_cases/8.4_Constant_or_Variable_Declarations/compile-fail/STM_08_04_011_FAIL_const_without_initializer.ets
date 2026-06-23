/**
 * @id STM_08_04_011_FAIL_const_without_initializer
 * @expect compile-fail
 * @section 8.4
 * @design const 声明必须带初始化器 — STATEMENTS.md: constant declaration has initialization part
 * @note 反向用例：const 无初始化器 → 编译错误
 */
function testConstWithoutInit(): void {
  const x: int
}
