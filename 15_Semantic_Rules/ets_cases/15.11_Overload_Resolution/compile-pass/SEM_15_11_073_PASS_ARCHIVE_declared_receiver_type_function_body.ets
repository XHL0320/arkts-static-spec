/*
 * @id SEM_15_11_073_PASS_ARCHIVE_declared_receiver_type_function_body
 * @expect compile-pass
 * @section 15.11
 * @design 归档吸纳：declared receiver type function body。来源 `Overloading\compile-pass\OVERLOAD_PASS_027_declared_receiver_type_function_body.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。
 * @source D:\work\spec\arkts-spec\SEMANTICS\ets_cases\Overloading\compile-pass\OVERLOAD_PASS_027_declared_receiver_type_function_body.ets
 */

class OverloadPass027Base {
  overload pick { pickNumber, pickString }

  pickNumber(p: number): string {
    return 'base-number'
  }

  pickString(p: string): string {
    return 'base-string'
  }
}

class OverloadPass027Derived extends OverloadPass027Base {
  pickInt(p: int): string {
    return 'derived-int'
  }

  overload pick { pickInt, pickNumber, pickString }
}

function main(): void {
  let derived: OverloadPass027Derived = new OverloadPass027Derived()
  let base: OverloadPass027Base = derived

  arktest.assertEQ(derived.pick(27), 'derived-int')

  // KNOWN_ISSUE: mainstream static language expectation is to use the declared receiver type
  // OverloadPass027Base for overload resolution, so this should select pickNumber(number).
  arktest.assertEQ(base.pick(27), 'base-number')
}
