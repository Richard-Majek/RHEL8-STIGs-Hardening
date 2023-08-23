var_accounts_maximum_age_login_defs='60'
var_accounts_minimum_age_login_defs='1'

## Cofigure max age for password
usrs_max_pass_age=( $(awk -v var="$var_accounts_maximum_age_login_defs" -F: '$5 > var || $5 == "" {print $1}' /etc/shadow) )
for i in ${usrs_max_pass_age[@]};
do
  passwd -x $var_accounts_maximum_age_login_defs $i
done

## Cofigure min age for password
usrs_min_pass_age=( $(awk -v var="$var_accounts_minimum_age_login_defs" -F: '$4 < var || $4 == "" {print $1}' /etc/shadow) )
for i in ${usrs_min_pass_age[@]};
do
  passwd -n $var_accounts_minimum_age_login_defs $i
done