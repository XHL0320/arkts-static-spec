/**
 * @id ENM_11_03_007_FAIL_NON_CONST_INIT_SUBSEQUENT
 * @expect compile-fail
 * @section 11.3
 * @design 非 const 初始化器后必须有显式初始化（spec Wrong 原例）
 * @note 反向用例：B = foo(), C 缺显式初始化器
 */
function foo(): int { return 1 }

enum Wrong {
  A,
  B = foo(),
  C
}