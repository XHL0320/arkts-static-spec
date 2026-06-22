/**
 * @id ENM_11_004_PASS_DUPLICATE_VALUE
 * @expect compile-pass
 * @section 11
 * @design 不同成员名但值相同合法
 * @note 正向用例
 */
enum Status { OK = 200, Success = 200, NotFound = 404 }

function testDuplicateValue(): void {
  let s1: Status = Status.OK
  let s2: Status = Status.Success
}