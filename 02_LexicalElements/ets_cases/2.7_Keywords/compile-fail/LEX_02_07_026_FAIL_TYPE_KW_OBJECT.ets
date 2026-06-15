/**
 * @id LEX_02_07_026_FAIL_TYPE_KW_OBJECT
 * @expect compile-fail
 * @section 2.7
 * @design 类型关键字 Object 不能作为标识符
 * @note 反向用例：let Object 应编译失败
 */
function test_026(): void {
  let Object: int = 1
}
