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
