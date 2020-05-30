function [mesuraAbs, errorAbs] = generarPunts(magnitud, escala, modeAbs)
 if exist('escala','var') 
                if not(isempty(escala))
                    escales = escala;
                else
                    escales = 1:length(magnitud.rangs);
                end
 else
     escales = 1:length(magnitud.rangs);
   
 end
 if not(exist('lin','var'))
    lin = false;
 end

 
            
mesuraAbs = [];
errorAbs = [];
lastM0 = 0;
lastM1 = 0;
    for escala_i = escales
        dig = magnitud.digits(escala_i);
        res = magnitud.resolucio(escala_i); %error resolució absolut
        erm = magnitud.errorMesura(escala_i); %error relatiu en %
        fe = magnitud.rangs(escala_i);
        if modeAbs
            if(magnitud.teRangsOffset)
                m0 = magnitud.rangsOffset(escala_i); %valor mesura quan erm = 0.
                m1 = fe + m0;
                e0 = dig*res;
                e1 = dig*res + erm/100*fe;
            else
               m0 = lastM1;
               m1 = fe;
               e0 = dig*res + erm/100*m0;
               e1 = dig*res + erm/100*fe;
            end;

            m = linspace(m0, m1, 10);
            e = e0 + erm/100*m;

            %afegim 2 punts  
            mesuraAbs = [mesuraAbs; m']; %m0; m1]; % m ];%
            errorAbs = [errorAbs; e']; %e0; e1]; % e ];%
            lastM0 = m0;
            lastM1 = m1;
        else
            m0 = 0 + lastM0;
            m1 = m0 + 1;
            e0 = dig*res/fe;
            e1 = dig*res/fe + erm/100;
            
            m = linspace(m0, m1, 10);
            e = e0 + erm/100*m;

            %afegim 2 punts  
            mesuraAbs = [mesuraAbs; m']; %m0; m1]; % m ];%
            errorAbs = [errorAbs; e']; %e0; e1]; % e ];%
            lastM0 = m0;
        end
    end
end

