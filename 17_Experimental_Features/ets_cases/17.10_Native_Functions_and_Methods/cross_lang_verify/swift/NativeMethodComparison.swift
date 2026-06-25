/**
 * Swift equivalent of ArkTS 17.10.2 Native Methods.
 *
 * Swift class methods vs ArkTS native methods:
 *
 * ArkTS native method:
 *   class Service {
 *     native platformCall(): string
 *   }
 *
 * Swift equivalent (via C interop):
 *   // In bridging header:
 *   //   extern const char* platform_call(void);
 *   // In Swift:
 *   //   class Service {
 *   //       func platformCall() -> String {
 *   //           return String(cString: platform_call())
 *   //       }
 *   //   }
 *
 * Key differences:
 * 1. ArkTS `native` keyword declares method without body;
 *    Swift always requires a body (or protocol requirement)
 * 2. ArkTS native method cannot be abstract;
 *    Swift protocol methods are similar to abstract but with different syntax
 * 3. ArkTS interface cannot have native methods;
 *    Swift protocols can have requirements that map to ObjC methods
 * 4. ArkTS override native method works;
 *    Swift override also works with class inheritance
 */

class NativeMethodBase {
    // Swift doesn't have `native`, so we simulate with a computed property
    // In real C-interop, this would call a C function
    func fetchData() -> String {
        // In real code, might call C function:
        // return String(cString: native_fetch_data())
        return "base data" // placeholder
    }
}

class NativeMethodChild: NativeMethodBase {
    override func fetchData() -> String {
        return "child implementation"
    }
}

// Demonstrate the pattern
let obj = NativeMethodChild()
let result = obj.fetchData()
assert(result == "child implementation", "Expected 'child implementation'")
print("override works: \(result)")

print("Swift native method comparison complete")
print("Key: Swift uses C interop instead of 'native' keyword")
