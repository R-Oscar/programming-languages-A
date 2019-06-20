fun is_older(date1 : int * int * int, date2 : int * int * int) =
    if (#1 date2) > (#1 date1) then true
    else
	if (#2 date2) > (#1 date1) then true
	else
	    #3 date2 > #3 date1

fun number_in_month(dates : (int * int * int) list, month : int) =
    if null dates then 0
    else
	let
	    val num_in_month_tails = number_in_month(tl dates, month)
	in
	    if (#2 (hd dates) = month) then 1 + number_in_month(tl dates, month)
	    else
		number_in_month(tl dates, month)
	end

fun number_in_months(dates : (int * int * int) list, months : int list) =
    if null months then 0
    else
	number_in_month(dates, hd months) + number_in_months(dates, tl months)

fun dates_in_month(dates: (int * int * int) list, month : int) =
    if null dates then []
    else
	let
	    val current_month = #2 (hd dates)
	in
	    if (current_month = month) then
		hd dates :: dates_in_month(tl dates, month)
	    else
		dates_in_month(tl dates, month)
	end
	    
fun dates_in_months(dates: (int * int * int) list, months: int list) =
    if null months then []
    else
	dates_in_month(dates, hd months)@dates_in_months(dates, tl months)

fun get_nth (strings: string list, n : int) =
    if (n = 1) then hd strings
    else
	get_nth(tl strings, n - 1)
	
fun date_to_string(date: int * int * int) =
    let
	val months = ["January", "February", "March", "April",
		      "May", "June", "July", "August", "September", "October", "November", "December"];
    in
	get_nth(months, #2 date) ^ " " ^ Int.toString(#3 date) ^ ", " ^ Int.toString(#1 date)
    end

fun number_before_reaching_sum (sum: int, numbers: int list) =
    if (null numbers) then 0
    else
	if (sum - hd numbers > 0) then
	    number_before_reaching_sum(sum - hd numbers, tl numbers) + 1
	else 0

fun what_month (day : int) =
    let
	val daysInMonths = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];
    in
	1 + number_before_reaching_sum(day, daysInMonths)
    end
	
		 
		 
	
    
