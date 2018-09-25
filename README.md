# DB-query
Practice and note for sql query

@ Sept 2018

INNER JOIN
---------------
An inner join using either of the equivalent queries gives the intersection of the two tables, 
i.e. the two rows they have in common.

>select * from a INNER JOIN b on a.a = b.b;
>select a.*, b.*  from a,b where a.a = b.b;

a | b
--+--

3 | 3
4 | 4


LEFT OUTER JOIN
---------------- 
With left outer join all of the rows of the left table are included in the joined table.


>select * from a LEFT OUTER JOIN b on a.a = b.b;
>select a.*, b.*  from a,b where a.a = b.b(+);

a |  b
--+-----

1 | null
2 | null
3 |    3
4 |    4

RIGHT OUTER JOIN
----------------
All the rows of the right table are included on the right outer join. This means that the right table that don’t have a column in left table still get displayed.
