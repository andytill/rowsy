-module(rowsy).

-export([rs/5]).

rs(Start, End, StartInc, EndInc, Keys1) ->
	Keys1_x = [sext:encode(R) || R <- Keys1],
	Start_x = sext:prefix(Start),
	End_x = sext:prefix(End),
	{Dropped1, Keys2} =
		lists:splitwith(fun(X) when StartInc == false -> X =< Start_x;
	   	                   (X) when StartInc == true  -> X <  Start_x end, Keys1_x),
	io:format("DROPPED from START ~p~n", [decode_keys(Dropped1)]),
	{Keys3, Dropped2} =
		lists:splitwith(fun(X) when EndInc == false -> X < End_x;
			               (X) when EndInc == true  -> X =< End_x end, Keys2),
	io:format("DROPPED from END   ~p~n", [decode_keys(Dropped2)]),
	decode_keys(Keys3).

decode_keys(Keys) ->
	[sext:decode(K) || K <- Keys].
