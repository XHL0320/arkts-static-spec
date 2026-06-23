/**
 * @id CLS_09_01_014_PASS_ABSTRACT_CLASS_CONCRETE_METHOD
 * @expect compile-pass
 * @section 9.1.1
 * @design abstract 类含具体方法编译通过
 * @note 正向用例：验证抽象类可含抽象方法和具体方法
 */
abstract class AbstractBase {
  abstract doWork(): void
  describe(): string {
    return "abstract base"
  }
}

