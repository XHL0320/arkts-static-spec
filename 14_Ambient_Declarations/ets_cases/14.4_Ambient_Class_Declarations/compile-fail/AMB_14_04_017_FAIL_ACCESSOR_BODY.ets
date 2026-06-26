/**
 * @id AMB_14_04_017_FAIL_ACCESSOR_BODY
 * @expect compile-fail
 * @section 14.4
 * @design ambient 访问器有实现体，违反 spec：ambient accessor 不能有体
 * @note 反向用例：ambient class 访问器带体应产生编译时错误
 */
declare class BadAccessor {
  get name(): string { return "x" }
  set name(val: string) {}
}
