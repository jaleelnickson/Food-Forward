% Food Forward 
% 
% This program serves to calculate the amount of food that has been 
% shared through a community-based food program and visualize the 
% resulting data.

%% Step 1: Initialize Variables

% Define the constants
totalFoodShared = 100;       % the total amount of food shared
numberOfPeople = 25;        % the number of people who receive food

% Initialize the variables
personNumber = zeros(1, numberOfPeople);  % the number of people served
foodShares = zeros(1, numberOfPeople);    % the amount of food shared per person
totalFoodLeft = totalFoodShared;          % the amount of food left

%% Step 2: Calculate Food Shares

% Determine the food shares for each person
for i = 1:numberOfPeople
    foodShares(i) = totalFoodLeft/numberOfPeople;
    totalFoodLeft = totalFoodLeft - foodShares(i);
    personNumber(i) = i;
end

%% Step 3: Display Results

% Display the results
fprintf('Person    Food Shared \n')
for i=1:numberOfPeople
   fprintf('  %d           %d \n', personNumber(i), foodShares(i))
end

%% Step 4: Visualize Data

% Create a bar graph
figure(1)
bar(personNumber, foodShares)
xlabel('People')
ylabel('Food Shared (lbs)')
title('Food Shared Through Food Forward Program');