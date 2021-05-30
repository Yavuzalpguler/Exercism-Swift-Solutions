//Solution goes in Sources
public class test{
    func abbreviate(_ name: String) -> String
    {
        var totle: String = ""
        let upperBasic: String = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
        var flag = 0
        
        for item in name
        {
            let s = String(item)
            if(s == ":")
            {
                break
            }
            else if(flag == 1)
            {
                totle += s
                flag = 0
            }
            else if(upperBasic.contains(item))
            {
                totle += s
            }
            else if(s == " " || s == "-")
            {
                flag = 1
            }
        }
        return totle.uppercased()
    }
}
var Acronym = test()
