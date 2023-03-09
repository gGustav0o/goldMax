%7.21
function findMax = goldmax(left, right)
    colors = ['k', 'y', 'g', 'b', 'm', 'c'];
    FI = (1 + sqrt(5)) / 2;
    x1 = left + (right - left) / (FI + 1);
    x2 = right - (right - left) / (FI + 1);
    f1 = f(x1);
    f2 = f(x2);
    i = 1;
        while ((2 - FI) * abs(x1 - x2) * 10 >= 1)
            if (f1 > f2)
                right = x2;
                x2 = x1;
                f2 = f1;
                x1 = left + (right - left) / (FI + 1);
                f1 = f(x1);
                if i < 7
                    plot(x1, f(x1),'-o','MarkerFaceColor', colors(i));
                    hold on
                end
                display(x1)
            else
                left = x1;
                x1 = x2;
                f1 = f2;
                x2 = right - (right - left) / (FI + 1);
                f2 = f(x2);
                if i < 7
                    plot(x2, f(x2),'-o', 'MarkerFaceColor', colors(i));
                    hold on
                end
                display(x2)
            end
            i = i + 1;
        end
        findMax = f((x1 + x2) / 2);
        x = 10:0.1:30;
        y = f(x);
        plot(x, y)
        hold on
        plot((x1 + x2) / 2, findMax, 'r*')
        grid on;
        xlabel('x');
        ylabel('y');
        title('График высоты мяча');
        legend('итерация 1', 'итерация 2', 'итерация 3', 'итерация 4', 'итерация 5', 'итерация 6')
  end
    
    