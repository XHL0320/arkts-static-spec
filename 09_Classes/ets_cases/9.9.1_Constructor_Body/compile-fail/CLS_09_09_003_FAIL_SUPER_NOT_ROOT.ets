/**
 * @id CLS_09_09_003_FAIL_SUPER_NOT_ROOT
 * @expect compile-fail
 * @section 9.9.1
 * @design super()调用必须是构造器体的根级语句
 * @note 反向用例：super()在if块内调用应编译失败
 */
class Base { constructor() {} }
class Bad extends Base {
  constructor() {
    if (true) {
      super()
    }
  }
}
