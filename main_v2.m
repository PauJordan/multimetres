clear all
dvm(1) = [multimetre(1, "101B+", "Meco", [ mesura("Voltatge DC", "V", [0.4, 4, 40, 400, 1000], [0.5, 0.5, 0.5, 0.5, 0.8], [4,4,4,4,4], [0.0001, 0.001, 0.01, 0.1, 1]), ...
                                        mesura("Voltatge AC", "V", [4, 40, 400, 750], [1.2, 1.2, 1.2, 1.5], [4,4,4,4,4], [0.001, 0.01, 0.1, 1]), ...
                                        mesura("Intensitat DC", "A", [0.04, 0.4, 4, 10], [1, 1, 1, 1.5], [4,4,4,4], [0.00001, 0.0001, 0.001, 0.01]), ...
                                        mesura("Intensitat AC", "A", [0.04, 0.4, 4, 10], [2, 2, 2, 2], [5, 5, 5, 5], [0.00001, 0.0001, 0.001, 0.01]), ...
                                        mesura("Resistència", "kΩ", [0.4, 4, 40, 400, 4000, 40000], [0.8,0.8,0.8,0.8,0.8,2], [4,4,4,4,4,4], [0.0001, 0.001, 0.01, 0.1, 1, 10]), ...
                                        mesura("Capacitat", "µF", [0.004, 0.04, 0.4, 4, 40, 200], [5,2.5,3.5,3.5,3.5,3.5], [4,4,4,4,4,4], [0.000001, 0.00001, 0.0001, 0.001, 0.01, 0.1]), ...
                                        mesura("Freqüència", "kHz", [4, 40, 400, 4000, 10000], [0.08,0.08,0.08,0.08,0.08],[2,2,2,2,2],[0.001, 0.01, 0.1, 1, 10]), ...
                                        mesura("Cicle de treball", "%", [100], [0.08], [2], [0.1], ["0.1 a 99.9"])])];

dvm(2)=[multimetre(2, "MTX202-Z", "Metrix", [mesura("Voltatge DC", "V", [4, 40, 400, 600], [0.2, 0.2, 0.2, 0.2], [2, 2, 2, 2], [0.001, 0.01, 0.1, 1]),...
                                          mesura("Voltatge AC", "V", [4, 40, 400, 600], [0.5, 0.5, 0.5, 0.5], [4, 4, 4, 4], [0.001, 0.01, 0.1, 1]),...
                                          mesura("Intensitat DC", "A", [4, 10], [1, 0.5], [5, 3], [0.001, 0.01]),...
                                          mesura("Intensitat AC", "A", [4, 10], [1, 0.5], [5, 3], [0.001, 0.01]),...
                                          mesura("Resistència", "kΩ", [0.4, 4, 40, 400, 4000, 40000], [0.5, 0.5, 0.5, 0.5, 1, 3], [5, 5, 5, 5, 5, 5], [0.0001, 0.001, 0.01, 0.1, 1, 10]),...
                                          mesura("Capacitat", "µF", [0.001, 0.01, 0.1, 1, 10, 100, 1000, 10000, 100000], [10, 5, 2, 2, 2, 2, 2, 5, 5], [10, 5, 5, 5, 5, 5, 5, 5, 5], [0.000001, 0.00001, 0.0001, 0.001, 0.01, 0.1, 1, 10, 100]), ...
                                          mesura("Temperatura", "°C", [50, 50, 1150], [2, 0, 9], [10, 3, 2], [0.1, 1, 1], ["-50 a 0", "0 a 50", "50 a 1200"], [223, 273, 323])])];

dvm(3) = [multimetre(3, "34XR-A", "Amprove", [ mesura("Voltatge DC", "V", [0.4, 4, 40, 400, 1000], [0.5, 0.5, 0.5, 0.5, 0.5], [1, 1, 1, 1, 1], [0.0001, 0.001, 0.01, 0.1, 1]), ...
                                         mesura("Voltatge AC", "V", [0.4, 4, 40, 400], [ 1.2, 1.2, 1.2, 1.2], [ 8, 8, 8, 8], [0.0001, 0.001, 0.01, 0.1]), ...
                                         mesura("Voltatge AC >500Hz", "V", [4, 40, 400, 750], [ 2, 2, 2, 2], [ 8, 8, 8, 8], [0.001, 0.01, 0.1, 1]), ...
                                         mesura("Intensitat DC", "A", [0.0004, 0.004, 0.04, 0.3, 10], [1, 1, 1, 1, 2], [ 1, 1, 1, 1, 3], [ 0.0000001, 0.000001, 0.00001, 0.0001, 0.01]), ...
                                         mesura("Intensitat AC", "A", [0.0004, 0.004, 0.04, 0.3, 10], [1.5, 1.5, 1.5, 1.5, 2.5], [ 8, 8, 8, 8, 10], [ 0.0000001, 0.000001, 0.00001, 0.0001, 0.01]), ...
                                         mesura("Resistència", "kΩ", [0.4, 4, 40, 400, 4000, 40000], [ 1, 1, 1, 1, 1, 2], [ 4, 4, 4, 4, 4, 5], [0.0001, 0.001, 0.01, 0.1, 1, 10]), ...
                                         mesura("Capacitat", "µF", [4, 40, 400, 4000], [ 5, 5, 5, 5], [ 10, 5, 5, 15], [0.001, 0.01, 0.1, 1]), ...
                                         mesura("Freqüència", "kHz", [4, 40, 400, 1000], [ 0.1, 0.1, 0.1, 0.1],[ 3, 3, 3, 3],[0.001, 0.01, 0.1, 1]), ...
                                         mesura("Cicle de treball", "% ", [90], [2], [5], [0.1]), ...
                                         mesura("Temperatura", "°C", [30, 190, 800], [2, 1, 3], [2, 4, 3], [1, 1, 1], ["-20 a 10", "10 a 200", "200 a 1000"], [253, 283, 473]), ...
                                         mesura("Temperatura °F", "°F", [54, 350, 1432], [2, 1, 3], [8, 6, 4], [1, 1, 1], ["-4 a 50", "50 a 400", "400 a 1832"], [269, 323, 673])])];


dvm(4) = [multimetre(4, "DVM9915", "VELLEMAN",[mesura("Voltatge DC", "V", [0.4, 4, 40, 400, 600], [0.5, 0.5, 0.5, 0.5, 0.8], [2, 2, 2, 2, 2], [0.0001, 0.001, 0.01, 0.1, 1]), ...
                                         mesura("Voltatge AC", "V", [4, 40, 400, 600], [ 0.8, 0.8, 0.8, 1.2], [3, 3, 3, 3], [0.0001, 0.01, 0.1, 1]), ...
                                         mesura("Intensitat DC", "A", [0.0004, 0.004, 0.04, 0.4, 4, 15], [1.2, 1.2, 1.2, 1.2, 1.2, 2], [ 2, 2, 2, 2, 2, 3], [ 0.0000001, 0.000001, 0.00001, 0.0001, 0.001, 0.01]), ...
                                         mesura("Intensitat AC", "A", [0.0004, 0.004, 0.04, 0.4, 4, 15], [1.5, 1.5, 1.5, 1.5, 2.5, 2.5], [ 3, 3, 3, 3, 5, 5], [ 0.0000001, 0.000001, 0.00001, 0.0001, 0.001, 0.01]), ...
                                         mesura("Resistència", "kΩ", [0.4, 4, 40, 400, 4000, 40000], [1, 1, 1, 1, 1, 1.5], [ 1, 2, 2, 2, 2, 3], [0.0001, 0.001, 0.01, 0.1, 1, 10]), ...
                                         mesura("Capacitat", "µF", [0.04, 0.4, 4, 40, 100], [3, 2.5, 2.5, 2.5, 5], [ 10, 5, 5, 5, 10], [0.00001, 0.0001, 0.001, 0.01, 0.1]), ...
                                         mesura("Freqüència", "kHz", [0.01, 0.1, 1, 10, 100, 1000, 10000], [ 0.1, 0.1, 0.1, 0.1, 0.1, 0.1, 0.1],[ 5, 5, 5, 5, 5, 5, 5, ],[0.00001, 0.0001, 0.001, 0.1, 1, 10, 100]), ...
                                         mesura("Cicle de treball", "% ", [99.8], [2], [2], [0.1]), ... 
                                         mesura("Temperatura", "°C", [200, 650], [1, 3], [4, 1], [1, 1], ["-50 a 150","150 a 800"], [223, 423])])];

dvm(5) = [multimetre(5, "UT81B", "UNI-T", [ mesura("Voltatge DC", "V", [0.4, 4, 40, 400, 1000], [0.8, 0.8, 0.8, 0.8, 0.1], [8, 8, 8, 8, 8], [0.0001, 0.001, 0.01, 0.1, 1]), ...
                                         mesura("Voltatge AC", "V", [4, 40, 400, 750], [1, 1, 1, 1.2], [15, 15, 15, 15], [0.001, 0.01, 0.1, 1]), ...
                                         mesura("Intensitat DC", "A", [0.0004, 0.004, 0.04, 0.4, 4, 10], [1, 1, 1.2, 1.2, 1.5, 1.5], [8, 8, 8, 8, 8, 8], [ 0.0000001, 0.000001, 0.00001, 0.0001, 0.001, 0.01]), ...
                                         mesura("Intensitat AC", "A", [0.0004, 0.004, 0.04, 0.4, 4, 10], [1.5, 1.5, 2, 2, 2.5, 2.5], [8, 8, 8, 8, 8, 8], [ 0.0000001, 0.000001, 0.00001, 0.0001, 0.001, 0.01]), ...
                                         mesura("Resistència", "kΩ", [0.4, 4, 40, 400, 4000, 40000], [1.2, 1, 1, 1, 1.2, 1.5], [5, 5, 5, 5, 5, 5], [0.0001, 0.001, 0.01, 0.1, 1, 10]), ...
                                         mesura("Capacitat", "µF", [0.04, 0.4, 4, 40, 100], [3, 3, 3, 3, 4], [8, 8, 8, 8, 8], [0.00001, 0.0001, 0.001, 0.01, 0.1]), ...
                                         mesura("Freqüència", "kHz", [10000], [0.1],[ 3],[10],["10 Hz a 10 MHz"],[0.01])])];

dvm(6) = [multimetre(6, "MODEL 1009", "Kyoritsu", [ mesura("Voltatge DC", "V", [0.4, 4, 40, 400, 600], [0.6, 0.6, 0.6, 0.6, 0.1], [4, 4, 4, 4, 4], [0.0001, 0.001, 0.01, 0.1, 1]), ...
                                            mesura("Voltatge AC", "V", [0.4, 4, 40, 400, 600], [ 1.6, 1.3, 1.3, 1.6, 1.6], [ 4, 4, 4, 4, 4], [0.0001, 0.001, 0.01, 0.1, 1]), ...
                                            mesura("Voltatge AC 60-400Hz", "V", [0.4, 4, 40, 400, 600], [ 2, 1.7, 1.7, 2, 2], [ 4, 4, 4, 4, 4], [0.0001, 0.001, 0.01, 0.1, 1]), ...
                                            mesura("Intensitat DC", "A", [0.0004, 0.004, 0.04, 0.4, 4, 10], [2, 2, 1, 1, 1.6, 1.6], [ 4, 4, 4, 4, 4, 4], [ 0.0000001, 0.000001, 0.00001, 0.0001, 0.001, 0.01]), ...
                                            mesura("Intensitat AC", "A", [0.0004, 0.04, 0.4, 4, 10], [2.6, 2, 2, 2, 2], [ 4, 4, 4, 4, 4], [ 0.0000001, 0.00001, 0.0001, 0.001, 0.01]), ...
                                            mesura("Intensitat AC 60-400 Hz", "A", [0.004, 0.04, 0.4, 4, 10], [3, 2.4, 2.4, 2.4, 2.4], [ 4, 4,4, 4, 4], [ 0.000001, 0.00001, 0.0001, 0.001, 0.01]), ...
                                            mesura("Resistència", "kΩ", [0.4, 4, 40, 400, 4000, 40000], [ 1, 1, 1, 1, 1, 2], [ 4, 4, 4, 4, 4, 4], [0.0001, 0.001, 0.01, 0.1, 1, 10]), ...
                                            mesura("Capacitat", "µF", [0.04, 0.4, 4, 40, 100], [ 3.5, 3, 3, 3.5, 3.5], [ 10, 5, 5, 5, 5], [0.00001, 0.0001, 0.001, 0.01, 0.1]), ...
                                            mesura("Freqüència", "kHz", [0.00512, 0.0512, 0.512, 5.12, 51.2, 512, 5120, 10000], [ 0.1, 0.1, 0.1, 0.1, 0.1, 0.1, 0.1, 0.1],[ 5, 5, 5, 5, 5, 5, 5, 5],[0.00001, 0.0001, 0.001, 0.01, 0.1, 1, 10, 10]), ...
                                            mesura("Cicle de treball", "% ", [99.9], [2.5], [5], [0.1], ["0.1 a 99.9"])])];
                                        
dvm (7) = [multimetre(7, "MD9030", "Metrel", [ mesura("Voltatge DC", "V", [0.4, 4, 40, 400, 1000], [0.3, 0.5, 0.5, 0.5, 1], [4, 3, 3, 3, 4], [0.0001, 0.001, 0.01, 0.1, 1]), ...
                                            mesura("Voltatge AC", "V", [0.4, 4, 40, 400, 1000], [4, 1.5, 1.5, 1.5, 4], [5, 5, 5, 5, 5], [0.0001, 0.001, 0.01, 0.1, 1]), ...
                                            mesura("Intensitat DC", "A", [0.0004, 0.004, 0.04, 0.4, 4, 10], [2, 1.2, 2, 1.2, 2, 2], [5, 3, 5, 3, 3, 5], [0.0000001, 0.000001, 0.00001, 0.0001, 0.001, 0.01]), ...
                                            mesura("Intensitat AC", "A", [0.0004, 0.004, 0.04, 0.4, 4, 10], [2, 1.5, 2, 1.7, 2, 1.8], [6, 4, 6, 4, 6, 4], [0.0000001, 0.000001, 0.00001, 0.0001, 0.001, 0.01]), ...
                                            mesura("Resistència", "kΩ", [0.4, 4, 40, 400, 4000, 40000], [0.6, 0.6, 0.6, 0.6, 1, 2], [4, 4, 4, 4, 4, 4], [0.0001, 0.001, 0.01, 0.1, 1, 10]), ...
                                            mesura("Capacitat", "µF", [0.5, 5, 50, 500, 3000], [3.6, 3.6, 3.6, 3.6, 3.6], [6, 6, 6, 6, 6], [0.001, 0.01, 0.1, 1, 1]), ...
                                            mesura("Freqüència", "kHz", [0.05, 0.5, 5, 50, 500, 1000], [0.5, 0.5, 0.5, 0.5, 0.5, 0.5], [4, 4, 4, 4, 4, 4], [0.0001, 0.001, 0.01, 0.1, 1, 1]), ...
                                            mesura("Temperatura", "°C", [320], [2], [3], [1], ["-20 a 300"], [253]), ...
                                            mesura("Temperatura °F", "°F", [576], [2], [6], [1], ["-4 a 572"], [269])])];
save('Taula_Dades.mat', 'dvm');

% for clau = mesuresDict(dvm).keys
%     display([clau, length(buscarDmms(dvm, clau))]);
% end
% hold off
% a_i = 1;
% for i = [2 3 4 7]%1:7 %
%     [xi,yi]=generarPunts(dvm(i).M('Voltatge AC'));
%     a(a_i) = {log10([xi,yi])};
%     a_i = a_i + 1;
% end
% close all
% hold on
% arrayfun(@(u) plot(u{:}(:,1),u{:}(:,2)),a);
% xticks(log10(4*10.^[-2:4]));
% xticklabels(4*10.^[-2:4]);
% 
% yticks(log10(10.^[-5:1:3]));
% yticklabels(10.^[-5:1:3]);

%xticklabels({'0.4','40','-\pi','0','\pi','2\pi','3\pi'})
%[x,y]=generarPunts(dvm(1).magnitud(1))
%[x1,y1]=generarPunts(dvm(4).magnitud(1))
%plot(log10(x), log10(y), log10(x1), log10(y1))



