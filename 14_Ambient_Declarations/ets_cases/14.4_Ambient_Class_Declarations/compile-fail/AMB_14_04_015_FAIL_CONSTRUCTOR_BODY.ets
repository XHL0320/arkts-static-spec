/**
 * @id AMB_14_04_015_FAIL_CONSTRUCTOR_BODY
 * @expect compile-fail
 * @section 14.4
 * @design ambient 构造器有实现体，违反 spec：ambient 构造器不能有体
 * @note 反向用例：ambient class 构造器带体应产生编译时错误
 */
declare class BadCtor {
  constructor() {}
}
