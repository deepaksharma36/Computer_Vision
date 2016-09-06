function DEMO_02_Finding_M_and_B()
%  SOME POINTS:
xy_pts = [ ...
    0.86  1.28  1.85  2.52  1.81  2.87  4.11  5.68  6.97  8.05  8.42  7.32  6.51  6.12  5.43  5.03  4.32  3.58  4.64  5.26  5.96  6.67  7.55 ;
    1.21  0.69  1.47  1.27  1.15  1.44  1.88  2.43  2.81  2.81  3.57  2.99  2.52  3.08  2.73  2.14  2.41  1.79  1.88  2.84  2.55  3.16  2.61 ;
];

%  We know Y = mx + 1.
%
%  We can write this as a matrix as:
% 
% Y = [m b] * [ x1 1 ;
%               x2 1 ;
%               x3 1 ].... 

    x_values    = xy_pts(1,:);

    % Form the X matrix:
    X   = [ x_values  ;  ...
            ones(1,length( x_values )) ];

    Y   = [ xy_pts(2,:) ];


    figure( 'Position', [4 4 1024 768] );
    plot( x_values(:), Y(:), 'ks', 'MarkerSize', 15, 'MarkerFaceColor', 'b' );
    grid on;
    axis( [0 10 0 10]);
    xlabel( 'X  ', 'FontSize', 22 );
    ylabel( 'Y  ', 'FontSize', 22 );

    %
    %  NOW -- SUPPOSE YOU DID NOT KNOW MB!!
    %
    %  WE KNOW THAT:
    %  
    %  Y = MB * X
    %
    %  BEING SILLY, WE WISH WE COULD WRITE:
    %
    %  Y / X = MB
    %
    
    %
    %  THIS SOLVES FOR THE MATRIX ALL AT ONCE:
    %
    MB_APPROX = Y / X
    
    Y_approx    = MB_APPROX * X;
    hold on;
    plot( xy_pts(1,:), Y_approx, 'rs-', 'LineWidth', 1 );

    legend( {'Original Points ', 'Fit Points '}, ...
            'FontSize', 32, ...
            'Location', 'North' );

end

