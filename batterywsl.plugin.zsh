function battery_is_charging() {
	command cat /sys/class/power_supply/battery/status | command grep -q '^.*Charging$'
}

function battery_pct() {
	command cat /sys/class/power_supply/battery/capacity
}

function battery_level_gauge() {
  local gauge_slots=${BATTERY_GAUGE_SLOTS:-10}
  local med_threshold=${BATTERY_MED_THRESHOLD:-$(( gauge_slots * 0.6 ))}
  local low_threshold=${BATTERY_LOW_THRESHOLD:-$(( gauge_slots * 0.3 ))}
  local color_charge=${BATTERY_COLOR_CHARGE:-%F{green}}
  local color_ok=${BATTERY_COLOR_OK:-%F{white}}
  local color_med=${BATTERY_COLOR_YELLOW:-%F{yellow}}
  local color_low=${BATTERY_COLOR_RED:-%F{red}}
  local color_reset=${BATTERY_COLOR_RESET:-%{%f%k%b%}}
  local filled_symbol=${BATTERY_GAUGE_FILLED_SYMBOL:-'●'}
  local empty_symbol=${BATTERY_GAUGE_EMPTY_SYMBOL:-'○'}

  local battery_remaining_percentage=$(battery_pct)
  local filled empty gauge_color

	if [[ $battery_remaining_percentage =~ [0-9]+ ]]; then
    filled=$(( ($battery_remaining_percentage * $gauge_slots) / 100 ))
    empty=$(( $gauge_slots - $filled ))

    if [[ $filled -gt $white_threshold ]]; then
      gauge_color=$color_ok
    elif [[ $filled -gt $yellow_threshold ]]; then
      gauge_color=$color_med
    else
      gauge_color=$color_low
    fi
  fi

  if battery_is_charging; then
	gauge_color=$color_charge
  fi

  printf ${gauge_color//\%/\%\%}
  # Filled slots
  [[ $filled -gt 0 ]] && printf ${filled_symbol//\%/\%\%}'%.0s' {1..$filled}
  # Empty slots
  [[ $filled -lt $gauge_slots ]] && printf ${empty_symbol//\%/\%\%}'%.0s' {1..$empty}
  # Suffix
  printf ${color_reset//\%/\%\%}
}