function y = f(x)
    G = 9.81;
    ANGLE = pi / 4;
    ZERO = 2;
    V = 20;
    y = tan(ANGLE) * x - ( G * x.^2 / (2 * V^2 * cos(ANGLE)^2)) + ZERO;
end