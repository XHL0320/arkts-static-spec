var p=0,f=0;func c(_ b:Bool,_ s:String){if b{p+=1;print("PASS \(s)")}else{f+=1;print("FAIL \(s)")}}
enum Color:CaseIterable{case red,green,blue}
c(Color.allCases.count==3,"swift allCases length")
c(String(describing:Color.green)=="green","swift String(describing:) analog to getName")
c(true,"Swift has no fromValue/getValueOf/values built-in N/A")
print("SUMMARY pass=\(p) fail=\(f)");if f != 0{exit(1)}