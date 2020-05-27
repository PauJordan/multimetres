classdef multimetre
    properties
        model
        fabricant
        magnitud
        M
    end
    methods
        function obj = multimetre(mod, fab, mag)
            obj.model = mod;
            obj.fabricant = fab;
            obj.magnitud = mag;
            obj.M = containers.Map('KeyType', 'char','ValueType','any');
            for mag_i = mag
                mag_key = char(mag_i.nom);
                obj.M(mag_key) = mag_i;
            end       
        end
    end    
end


