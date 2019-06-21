val is_older_test1 = is_older((0, 0, 0), (0, 0, 0)) = false;
val is_older_test2 = is_older((1, 2, 3), (2, 3, 4)) = true;
val is_older_test3 = is_older((2011, 1, 1), (2012, 1, 1)) = true;
val is_older_test4 = is_older((2011, 1, 30), (2011, 1, 31)) = true;
val is_older_test5 = is_older((2019, 2, 1), (2019, 1, 1)) = false;
val is_older_test6 = is_older((1, 12, 31), (2, 1, 1)) = true;
							  
val number_in_month_test1 = number_in_month ([(2012,2,28),(2013,12,1)],2) = 1;

val number_in_months_test1 = number_in_months ([(2012,2,28),(2013,12,1),(2011,3,31),(2011,4,28)],[2,3,4]) = 3;

val test4 = dates_in_month ([(2012,2,28),(2013,12,1)],2) = [(2012,2,28)];

val test5 = dates_in_months ([(2012,2,28),(2013,12,1),(2011,3,31),(2011,4,28)],[2,3,4]) = [(2012,2,28),(2011,3,31),(2011,4,28)];

val test6 = get_nth (["hi", "there", "how", "are", "you"], 2) = "there";
val test7 = date_to_string (2013, 6, 1) = "June 1, 2013";
val test8 = number_before_reaching_sum (10, [1,2,3,4,5]) = 3;
val test9 = what_month 70 = 3;
val test10 = month_range (31, 34) = [1,2,2,2];
val test11 = oldest([(2012,2,28),(2011,3,31),(2011,4,28)]) = SOME (2011,3,31);
(*val test12 = number_in_months_challlenge([(2012,2,28),(2013,12,1),(2011,3,31),(2011,4,28)],[2,3,4,4,4]) = 3*)
val test12 = remove_duplicates([2, 3, 4, 4, 4]) = [2, 3, 4];
