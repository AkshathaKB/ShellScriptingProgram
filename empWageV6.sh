
#!/bin/bash -x

valid=true
isPartTime=1;
isFullTime=2;
empRateperHr=20;
Days=1;

while [ $valid ]
do
        randomCheak=$(( RANDOM % 3 ))
        if [ $Days -eq 20 ]
        then
                        break;
        elif [ $totalnumHrs -gt 100 ]
        then
                        break;
        else
                        (( Days++ ))
                                Days=1;
                        case $randomCheak in
                                        $isFullTime)
                                                        empnumHr=8
                                                        totalHr=$(($totalnumHrs + $empnumHr))
                                                        ;;
                                        $isPartTime)
                                                        empnumHr=4
                                                        totalHr=$(($totalnumHrs + $empnumHr))
                                                        ;;
                                        *)
                                                        empnumHr=0
                                                        totalHr=$(( $totalnumHrs + $empnumHr ))
                                                        ;;
                        esac
        fi
done

totalsalary=$(($totalnumHrs * $empRateperHr))
