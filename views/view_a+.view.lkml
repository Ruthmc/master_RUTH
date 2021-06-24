include:"/views/*.view"
view: +view_a {
 dimension: created_users_date {
  type: date
   sql: ${users.created_date} ;;
 }
}
