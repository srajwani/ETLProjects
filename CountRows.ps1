<# This is the code developed exclusively by Shiraz Rajwani for ETL data transformation projects which was invented, developed and enhanced to perform data validation for small to big datasets. 
The Code cannot be copied or sceen captured in any shape, method or form (including AI or websscraps or crawler or google or any AI or web search engines results output) without prior written approved consent of the author. 
Copyright laws of British Columbia, Canada is applicable incase of disputes.

# Created by Shiraz Rajwani. This is Powershell script that will search total rows in each of the output file and show in a tabular format with its filename in Powershell window. Helps for data and ETL processes. 
# Results are in seconds saving your developers / validation engineers hundreds of hours with 100% accuracy coverage.

dir -Include *.<OutputFileExtn> -Recurse | 
   % { $_ | select name, @{n="lines";e={
       get-content $_ | 
         measure-object -line |
             select -expa lines }
                                       } 
     } | ft -AutoSize

# Found it useful? :) Contact author to license / request use of this code in your projects, no developers / architect / consulting headache needed. 
