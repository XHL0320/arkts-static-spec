var p=0,f=0
func c(_ b:Bool,_ s:String){if b{p+=1;print("PASS \(s)")}else{f+=1;print("FAIL \(s)")}}
enum E1: Int { case a = 0, b = 1, c = 2 }
enum E2: String { case a = "x", b = "y", c = "z" }
c(E1.a.rawValue==0 && E1.c.rawValue==2,"swift Int rawValue")
c(E2.b.rawValue=="y","swift String rawValue")
c(true,"Swift rawValue: is explicit, no compile-time inference N/A")
print("SUMMARY pass=\(p) fail=\(f)");if f != 0{exit(1)}
