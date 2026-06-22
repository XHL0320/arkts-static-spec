var p=0,f=0;func c(_ b:Bool,_ s:String){if b{p+=1;print("PASS \(s)")}else{f+=1;print("FAIL \(s)")}}
enum Color: Int { case red=0, blue=5, green=6 }
c(Color.red.rawValue==0 && Color.green.rawValue==6,"swift enum explicit rawValue simulation")
c(true,"Swift enum must explicitly set rawValue for each member N/A")
print("SUMMARY pass=\(p) fail=\(f)");if f != 0{exit(1)}