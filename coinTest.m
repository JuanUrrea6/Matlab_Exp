function coinTest()
flips = 9000;
results = [];
probs = [];
for i = 1:flips
    actualResult = round(rand);
    results = [results actualResult];
    success = sum(results);
    totalFlips = i;
    probability = success/totalFlips;
    probs = [probs probability];
end
flipList = 1:1:9000;
plot(flipList,probs,'LineWidth',1.5);
hold on;
probC = 0.5*ones([1 9000]);
plot(flipList,probC,'--','LineWidth',1.5);
legend('Sample Probability','Fair Coin');
saveas(gcf,'CoinTest.png');
end