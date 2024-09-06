l = 35; % fixed path length
x = -(l - 1):l - 1;
m = 5; % number of steps 




lambda = [5, 15, 20]; % Poisson parameter observes n hops in a step

figure;
hold on;


for i = 1:length(lambda)
    cond_prob_lamb = compute_cond_prob(x, l, m, lambda(i));
    stem(x, cond_prob_lamb,'LineWidth', 1,  'DisplayName', ['Lambda = ', num2str(lambda(i))]); % Plot with label
end


titleString = sprintf('Distribution of x conditioned on l = %d with m = %d', l, m);
% Add title and labels
title(titleString);
xlabel('x');
ylabel('Likelihood');

% Add legend to differentiate between plots
legend show;

% Release the hold on the current figure
hold off;


% cond_prob = zeros(1, length(x));
% for i = 1:length(x)
%     cond_prob(i) = (lambda^(l-x(i)) / ((2^(m + 1) * (m + 1)^l) * factorial(l - x(i)))) * compute_S(l, x(i), m);
% end


% titleString = sprintf('Distribution of x conditioned on l = %d', l);
% 
% figure()
% stem(x, cond_prob)
% xlim([-(l + 1), (l + 1)])
% title(titleString);