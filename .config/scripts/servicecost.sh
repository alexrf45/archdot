aws ce get-cost-and-usage \
--time-period Start=$(date "+%Y-%m-01"),End=$(date --date="$(date +'%Y-%m-01') + 1 month  - 1 second" -I) \
--granularity MONTHLY \
--metrics USAGE_QUANTITY BLENDED_COST  \
--group-by Type=DIMENSION,Key=SERVICE | jq '[ .ResultsByTime[].Groups[] | select(.Metrics.BlendedCost.Amount > "0") | { (.Keys[0]): .Metrics.BlendedCost } ] | sort_by(.Amount) | add'