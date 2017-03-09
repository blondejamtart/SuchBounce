n = 256;
R_encounter = 7*6.376e6:-(6.376e6):6.376e6;

OrbEn_1 = zeros(l,length(R_encounter));
OrbEn_2 = zeros(l,length(R_encounter));
for i = 1:length(R_encounter)
    %cd(['/media/Data/Bryan/binary_' num2str(n) '_' num2str(R_encounter(i)) '/Outputs'])
    cd(['/media/falcon/Tesla_Data/theta_piby2/BRYANS_STUFF/binary_' num2str(n) '_' num2str(R_encounter(i)) '/Outputs'])
    m = fileread('../m.vec',n,0,1);
    E_plot
    OrbEn_1(:,i) = Tv(:,254)+2*V(:,254)-m(254)*T/sum(m(254:255));
    OrbEn_2(:,i) = Tv(:,255)+2*V(:,255)-m(255)*T/sum(m(254:255));
end