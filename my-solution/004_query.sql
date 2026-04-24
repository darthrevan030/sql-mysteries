--004_query.sql
SELECT get_fit_now_member.id,
    get_fit_now_member.person_id,
    get_fit_now_member.name
FROM get_fit_now_member
    LEFT JOIN person ON get_fit_now_member.person_id = person.id
    LEFT JOIN get_fit_now_check_in ON get_fit_now_check_in.membership_id = get_fit_now_member.id
WHERE get_fit_now_check_in.check_in_date LIKE '%0109%'