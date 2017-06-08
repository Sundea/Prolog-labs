%%%-------------------------------------------------------------------
%%% @author dmytropolishchuk
%%% @copyright (C) 2017, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 25. May 2017 10:10 PM
%%%-------------------------------------------------------------------
-module('main').
-author("dmytropolishchuk").

%% API
-export([coordinateSystem/1]).

% coordinateSystem::tuple() -> String
coordinateSystem({1, cartesian}) -> "Cartesian 1-dimensinal coordinate system (x)";
coordinateSystem({2, cartesian}) -> "Cartesian 2-dimensinal coordinate system (x, y)";
coordinateSystem({3, cartesian}) -> "Cartesian 3-dimensinal coordinate system (x, y, z)";
coordinateSystem({2, polar}) -> "Polar coordinate coordinate system(ρ, φ)";
coordinateSystem({3, cylindrical}) -> "Cylindrical 3-dimensinal coordinate system (ρ, φ, z)";
coordinateSystem({3, spherical}) -> "Spherical coordinate system (r, θ, φ)".
