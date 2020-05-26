classdef mesura
    properties
        nom
        unitat
        rangs
        errorMesura
        digits
        resolucio
        teEtiquetes = false
        etiquetes
    end
    methods
        function obj = mesura(Tip, Unit, Rngs, eM, dig, res, eti)
            obj.nom = Tip;
            obj.unitat = Unit;
            obj.rangs = Rngs;
            obj.errorMesura = eM;
            obj.digits = dig;
            obj.resolucio = res;
            if exist('eti','var')       
                obj.teEtiquetes = true;
                obj.etiquetes = eti;
            end
            
        end
    end
end

