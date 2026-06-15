/**
 * @id LEX_02_03_026_FAIL_SPACE_IN_KEYWORD
 * @expect compile-fail
 * @section 2.3
 * @design 关键字内含 Space 应编译失败 (cl ass) * @note 反向用例：验证该场景应产生编译时错误

 */
cl ass MyClass {
  x: int = 1
}
