/**
 * @id CLS_09_07_018_FAIL_EMPTY_BODY_SEMICOLON
 * @expect compile-fail
 * @section 9.7.7
 * @design 非abstract且非native的方法必须有block体，不能为空体或分号
 * @note 反向用例：普通方法使用分号或空体导致编译失败
 */
class EmptyBodyViolation018 {
  // Error: non-abstract, non-native method with semicolon body
  missingBodyInt(): int;

  // Error: non-abstract, non-native method with semicolon body
  missingBodyVoid(): void;

  // Error: non-abstract, non-native method with semicolon body
  missingBodyString(): string;
}

abstract class AbstractConcreteViolation018 {
  // This is fine - abstract method with semicolon
  abstract validAbstract(): int

  // Error: non-abstract method (in abstract class) with semicolon body
  concreteButEmpty(): void;
}

class AnotherViolation018 {
  // Error: non-abstract, non-native method with semicolon body
  noImpl(): double;
}
