function [M] = mesuresDict(dmms)
M = containers.Map('KeyType','char','ValueType','any');
for dmm = dmms
    for mag = dmm.magnitud
        mag_key = char(mag.nom);
        if isKey(M, mag_key)
            M(mag_key) = [M(mag_key), mag];
        else
            M(mag_key) = mag;
        end
    end
end

