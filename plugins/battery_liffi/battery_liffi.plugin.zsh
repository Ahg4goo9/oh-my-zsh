if [[ $(acpi 2&>/dev/null | grep -c '^Battery') -gt 0 ]] ; then
    function battery_pct_prompt() {
    batteries=()
    acpi| while read kind nr stat charge rest; do batteries+=("$charge"); done

    output="["
    for battery in $batteries
    do
        battery=($(echo $battery | tr -cd '[:digit:]'))
        if [ $battery -gt 90 ] ; then
          color='green'
        elif [ $battery -gt 20 ] ; then
          color='yellow'
        else
          color='red'
        fi
        output="${output}%{$fg[$color]%}${battery}%{$reset_color%} "
    done
    echo "$output[0, $#output-1]]"
    }
else
  error_msg='no battery'
  function battery_pct_prompt() { echo '' }
fi

