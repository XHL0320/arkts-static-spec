/**
 * @id CLS_09_09_016_FAIL_SUPER_ARG_USE_SUPER
 * @expect compile-fail
 * @section 9.9.1
 * @design super()参数不能使用super关键字
 * @note 反向用例：super(super.toString())应编译失败
 */
class Base { constructor(s: string) {} }
class Bad extends Base {
  constructor() { super(super.toString()) }
}
