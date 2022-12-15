
subplot(3,1,1)
figure(1)
startPlot = -100;
zeroStamp = 2000;
endPlot = 3000;
plotWidth = endPlot - zeroStamp;

hold on
grid on 
%plot((tout-zeroStamp),coreTempOut,'Color','black','LineWidth',2)

%title('Reactivity Insertion-Changing the Heat Transfer Coefficient of the Fuel Salt')
title('ULOF-Changing the Heat Transfer Coefficient of the Fuel Salt')


plot((tout-zeroStamp),coreTempOut,'LineWidth',2)
hold on
%legend('-30%','nominal','+30%')
plot((tout-zeroStamp),coreTempIn,'LineWidth',2)
hold off
xlim([startPlot plotWidth])
%legend('0','1','2','3')
legend('outlet -30%','inlet -30%','outlet nominal','inlet nominal','outlet +30%','inlet +30%')
xlabel('Time [s]')
ylabel('Core Temperature [\circ C]')

subplot(3,1,2)
figure(1)
startPlot = -100;
zeroStamp = 2000;
endPlot = 3000;
plotWidth = endPlot - zeroStamp;
hold on
grid on
%plot((tout-zeroStamp),rho_fb_f,'LineWidth',2)
plot((tout-zeroStamp),rho_fb_tot,'LineWidth',2)
xlim([startPlot plotWidth])
%legend('0','1','2','3')
legend('-30%','nominal','+30%')
xlabel('Time [s]')
ylabel('Fuel Feedback Reactivity')

subplot(3,1,3)
startPlot = -100;
zeroStamp = 2000;
endPlot = 3000;
plotWidth = endPlot - zeroStamp;
hold on
grid on
plot((tout-zeroStamp),Power,'LineWidth',2)
xlim([startPlot plotWidth])
%legend('0','1','2','3')
legend('-30%','nominal','+30%')
xlabel('Time [s]')
ylabel('Fractional Power')
hold off