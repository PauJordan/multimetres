classdef multimetre
    properties
        model
        fabricant
        magnitud 
    end
    methods
        function obj = multimetre(mod, fab, mag)
            obj.model = mod;
            obj.fabricant = fab;
            obj.magnitud = mag;
        end
    end
    
end


