aws ce get-cost-and-usage                                  \
    --time-period 'Start=2022-01-01,End=2022-09-30'        \
    --metrics     'UnblendedCost'                          \
    --granularity 'MONTHLY'                                \
    --query       'ResultsByTime[*].Total.[UnblendedCost]' \
    --output      'text'
