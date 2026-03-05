% Parameters (set others to 1)
gamma0 = 1;
omega_res = 1;
beta = 1;

% Sweep variables
omega = linspace(1-4,1+4,500);
gammaE = linspace(0,8,500);

[W, GE] = meshgrid(omega, gammaE);

gammaT = gamma0 + GE;

% Transmission amplitude
H = beta - (2*GE) ./ (gammaT + 1i*(W - omega_res));

% Output intensity |E_out / E_in|^2
T = abs(H).^2;
% Contour levels
T_equal = [0.01,0.1, 0.2, 0.5];
% Plot 2D contour
%figure('Units','pixels','Position',[100 100 900 400]);
figure;
contourf(W, GE, T, 400, 'LineColor','none'); hold on;
colormap('hsv');  
[C,h] = contour(W, GE, T, T_equal, 'k', 'LineWidth', 1.5);
clabel(C,h,'Color','k','FontSize',10);

colorbar;
xlabel('\omega');
ylabel('\gamma_E');
title('|E_{out}/E_{in}|^2');
grid off;
%%

% Parameters (set others to 1)
gamma0 = 1;
omega_res = 1;
beta = 1;

gE_list = [0.1, 1, 7];

% Frequency sweep
omega = linspace(-15,15,2000);

figure;
hold on;

for k = 1:length(gE_list)
    
    gammaE = gE_list(k);
    gammaT = gamma0 + gammaE;
    
    % Transmission amplitude
    H = beta - (2*gammaE) ./ (gammaT + 1i*(omega - omega_res));
    
    % Intensity transmission
    T = abs(H).^2;
    
    plot(omega, T, 'LineWidth', 1.5, ...
        'DisplayName', sprintf('\\gamma_E = %.1f', gammaE));
end
grid on;
xlabel('\omega');
ylabel('|E_{out}/E_{in}|^2');
legend('Location','best');
grid off;