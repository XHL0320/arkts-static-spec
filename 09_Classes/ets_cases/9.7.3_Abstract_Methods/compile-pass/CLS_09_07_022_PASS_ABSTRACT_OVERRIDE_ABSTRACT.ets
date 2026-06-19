/**
 * @id CLS_09_07_022_PASS_ABSTRACT_OVERRIDE_ABSTRACT
 * @expect compile-pass
 * @section 9.7.3
 * @design 抽象方法覆盖抽象方法：abstract子类中的abstract方法覆盖基类的abstract方法
 * @note 正向用例：abstract子类可以声明abstract方法覆盖另一个abstract方法
 */
abstract class DataProcessor {
  abstract validate(input: string): boolean
  abstract transform(input: string): string
}

abstract class SafeDataProcessor extends DataProcessor {
  // Abstract method overrides abstract method from base abstract class
  abstract validate(input: string): boolean

  // Another abstract method override
  abstract transform(input: string): string

  // New abstract method added
  abstract sanitize(input: string): string
}

class TextProcessor extends SafeDataProcessor {
  validate(input: string): boolean {
    return input.length > 0
  }

  transform(input: string): string {
    return input.trim()
  }

  sanitize(input: string): string {
    let result: string = input
    return result
  }
}
