/**
 * @id ENM_11_02_003_FAIL_MEMBER_NOT_ASSIGNABLE
 * @expect compile-fail
 * @section 11.2
 * @design 成员初始化器不可赋值给基类类型 → 编译错误（spec Wrong2 原例）
 * @note 反向用例：long { A = 1, B = "abc" }
 */
enum Wrong3: long { A = 1, B = "abc" }