--Task 1
select title as course from course where credits>3;

select room_number as classroom from classroom where building='Watson' or building='Packard';

select title as course from course where dept_name='Comp. Sci.';

select title as course from course,section where course.course_id=section.course_id and section.semester='Fall';

select name as student from student where tot_cred between 45 and 90;

select name as student from student where name similar to '%(a|e|y|u|i|o)';

select title as course from prereq,course where prereq.course_id=course.course_id and prereq.prereq_id='CS-101';

--Task 2
select dept_name,avg(salary) as average_salary from instructor group by dept_name order by average_salary asc;

select building from(select building,count(*) as num from course,department
                     where course.dept_name=department.dept_name
                     group by building) as sub1
where num=(select max(num) from(select building,count(*) as num from course,department
                                where course.dept_name=department.dept_name
                                group by building) as sub2);

select * from(select dept_name,count(*) as num from course
              group by dept_name) as sub1
where num=(select min(num) from(select dept_name,count(*) as num from course
                                group by dept_name) as sub2);

select id,name from(select student.id,name,count(course.dept_name) as num
                    from student,takes,course where student.id=takes.id and takes.course_id=course.course_id and course.dept_name='Comp. Sci.'
                    group by (student.id,name)) as sub
where num>3;

(select name from instructor where dept_name='Biology') union (select name from instructor where dept_name='Phylosophu')
union (select name from instructor where dept_name='Music');

(select distinct name from instructor,teaches where instructor.id=teaches.id and year=2018)
except (select distinct name from instructor,teaches where instructor.id=teaches.id and year=2017);

--Task 3
select name from student,takes,course
where student.id=takes.id and takes.course_id=course.course_id and course.dept_name='Comp. Sci.' and (grade='A' or grade='A-')
order by name asc;

select distinct name from advisor,student,takes
where advisor.s_id=student.id and advisor.s_id=takes.id and grade not in ('A-','A','B+','B');

select dept_name from student
where dept_name not in (select dept_name from student,takes
                        where student.id=takes.id and grade in ('F','C-','C','C+')
                        group by dept_name);


select name from instructor,teaches
where instructor.id=teaches.id and course_id not in(select distinct course_id from student,takes
                                                    where student.id=takes.id and grade='A');

select distinct title as name from course,section,time_slot
where course.course_id=section.course_id and section.time_slot_id=time_slot.time_slot_id and (end_hr<=12 and end_min<=59) or (end_hr=13 and end_min=0);