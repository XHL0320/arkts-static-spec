/*
 * @id SEM_15_11_00_024_PASS_ARCHIVE_receiver_instance_method_priority_combined
 * @expect compile-pass
 * @section 15.11
 * @design Archive import: instance method lookup has priority for method-call syntax, while receiver function remains callable as a function.
 * @source D:\work\spec\arkts-spec\SEMANTICS\ets_cases\Overloading\compile-pass\OVERLOAD_PASS_022_receiver_instance_method_priority_combined.ets
 */

export class OverloadPass022C {
  bar(): string {
    return 'instance'
  }
}

export function overloadPass022Receiver(this: OverloadPass022C): string {
  return 'receiver'
}


function main(): void {
  let c: OverloadPass022C = new OverloadPass022C()
  arktest.assertEQ(c.bar(), 'instance')
  arktest.assertEQ(overloadPass022Receiver(c), 'receiver')
}
