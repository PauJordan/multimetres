function dmms_sel = buscarDmms(dmms, clau)
dmms_sel = [];
for dmm = dmms
    if isKey(dmm.M, clau)
        dmms_sel = [dmms_sel, dmm];
    end
end

