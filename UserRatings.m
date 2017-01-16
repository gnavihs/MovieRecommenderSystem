function my_ratings = UserRatings()
%USERATINGS allows a user to mark their ratings and returns a
%array of the ints from 0-5

%%Users can use this file to update their ratings

%  Initialize ratings
my_ratings = zeros(1682, 1);

% Check the file movie_idx.txt for id of each movie in our dataset
% For example, Toy Story (1995) has ID 1, so to rate it "4", you can set
my_ratings(1) = 5;

% Or suppose did not enjoy Silence of the Lambs (1991), you can set
my_ratings(98) = 5;

% I have selected a few movies we liked / did not like and the ratings I
% gave are as follows:
my_ratings(7) = 2;
my_ratings(12)= 3;
my_ratings(54) = 1;
my_ratings(64)= 5;
my_ratings(66)= 5;
my_ratings(69) = 2;
my_ratings(183) = 4;
my_ratings(226) = 4;
my_ratings(355)= 4;

end