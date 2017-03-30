for j = 1:length(theta)
    OE{j} = OE_2{j} - 0.5*(OE_2{j} + OE_1{j});   
    x{j} = diff(OE{j});
end


for j = 1:length(theta)
    p_tmp = zeros(1,7);
    for i = 1:7
        if max(abs(x{j}(2:ii-1,i)/max(x{j}(2:4096,i)))) > 80
            p_tmp(i) = 1;
        end
    end
    for i = 1:7
        if max(abs(x{j}((0.625*ii):size(x{j},1),i)/max(x{j}(2:4096,i)))) < 0.01
            p_tmp(i) = 2;
        end
    end
    p{j} = p_tmp;
end
Orb = zeros(1,7);
Esc = zeros(1,7);
Col = zeros(1,7);
for i = 1:length(theta)
    Orb = Orb + (p{i}==0)/length(theta);
    Esc = Esc + (p{i}==2)/length(theta);
    Col = Col + (p{i}==1)/length(theta);
end
%
plot(R_encounter/R_encounter(7),100*Esc,R_encounter/R_encounter(7),100*(Esc+Orb))
%  plot(R_encounter/R_encounter(7),3*Col)