/**
 * @id CLS_09_07_015_PASS_OVERRIDE_DIFFERENT_DEFAULT
 * @expect compile-pass
 * @section 9.7.5
 * @design override方法不同默认参数值
 * @note PDF原文§9.7.5说"aligned with OverrideCompatible Signatures"，
 *       不是"same default parameter values"且无"compile-time error occurs"语句。
 *       编译器接受不同默认参数值是符合PDF原文的行为。
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
