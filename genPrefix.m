function [outString] = genPrefix(value_in, unit)
    unitS = string(unit);
    prefixes = {'p','n','µ', 'm', '', 'k', 'M'};
    exponents = {-12,-9,-6,-3,0,3,6};
    preDict = containers.Map(prefixes, exponents);
    prefix = unitS{1}(1);
    if isKey(preDict, prefix)
        value = value_in*10^preDict(prefix);
        unitat = unitS{1}(2:end);
    else
        value = value_in;
        unitat = unitS{1}(1:end);
    end
    
        exponent = 0;
    if(not(value == 0) & value > 0 & not(or(prefix == '%', prefix == '°')))
    while(value < 1 && exponent > -12)
        value = value*1000;
        exponent = exponent - 3;
    end  
    while(value >= 1000 && exponent < 6)
        value = value/1000;
        exponent = exponent + 3;
    end
    end
    
    
     preDict = containers.Map(exponents,prefixes);
     
    if isKey(preDict, exponent)
        outString = char(string(value)+ " " + string(preDict(exponent)) + unitat);
    else
        outString = char(string(value_in) + " " + unitS);
    end
end

