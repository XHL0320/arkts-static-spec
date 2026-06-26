/**
 * @id CLS_09_07_015_PASS_OVERRIDE_DIFFERENT_DEFAULT
 * @expect compile-pass
 * @section 9.7.5
 * @design 重写违规：重写方法使用与原方法不同的默认参数值
 * @note 反向用例：override方法必须保持与超类方法相同的默认参数值
 */
class Printer015 {
  print(text: string = "Hello"): string {
    return text
  }

  format(prefix: string = "[INFO]", suffix: string = ""): string {
    return prefix + "message" + suffix
  }
}

class CustomPrinter015 extends Printer015 {
  // Error: overriding method changes default parameter value (default changed from "Hello" to "World")
  override print(text: string = "World"): string {
    return "Custom: " + text
  }

  // Error: overriding method changes one of the default parameter values
  // (prefix default changed from "[INFO]" to "[CUSTOM]")
  override format(prefix: string = "[CUSTOM]", suffix: string = ""): string {
    return prefix + "custom message" + suffix
  }
}
