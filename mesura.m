classdef mesura < handle
    properties
        nom
        unitat
        rangs
        errorMesura
        digits
        resolucio
        teEtiquetes = false
        etiquetes
        teRangsOffset = false
        rangsOffset
    end
    methods
        function obj = mesura(Tip, Unit, Rngs, eM, dig, res, eti, rOff)
            obj.nom = Tip;
            obj.unitat = Unit;
            obj.rangs = Rngs;
            obj.errorMesura = eM;
            obj.digits = dig;
            obj.resolucio = res;
            if exist('eti','var')
                if not(isempty(eti))
                    obj.teEtiquetes = true;
                    obj.etiquetes = eti;
                end
            end
            if exist('rOff','var')
                obj.teRangsOffset = true;
                obj.rangsOffset = rOff;
            end
            
        end
    end
end

