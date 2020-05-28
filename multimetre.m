classdef multimetre < handle
    properties
        id
        model
        fabricant
        magnitud
        M
    end
    methods
        function obj = multimetre(ide, mod, fab, mag)
            obj.id = ide;
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


