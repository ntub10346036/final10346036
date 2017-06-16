class Paper < ApplicationRecord
  def set_score(x)
    if(x >= 90)
      "S"
    else
       if(x < 90 && x >= 80)
          "A"
        else
          if(x < 80 && x >= 70)
            "B"
          else
            if(x < 70 && x >= 60)
              "C"
            else
              "D"
            end
          end
        end
     end
  end
end
