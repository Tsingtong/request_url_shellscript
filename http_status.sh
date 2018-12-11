#!/bin/bash
OK_COUNT=0
FAIL_COUNT=0
GAP=1
for i in `cat pypi_sites.txt`
do
#Acquire STATUS_CODE
STATUS_CODE=`curl -o /dev/null -s -w %{http_code} $i`
echo -e "$i:\t$STATUS_CODE"
#Acquire First CODE
k=100
((JUDGE_CODE=$STATUS_CODE/$k))
#Judge CODE status
if [ $JUDGE_CODE -le 3 ];
    then
       echo "$url--Connection success--"
       ((OK_COUNT=$OK_COUNT+$GAP))
    else
       echo "$url--Connection fail--"
       ((FAIL_COUNT=$FAIL_COUNT+$GAP))
    fi
    sleep 0.5
done
echo "------PyPi Connection status------"
echo ">>>>>>Connection success number：$OK_COUNT"
echo ">>>>>>Connection fail number：$FAIL_COUNT"
echo "----------------------------------"


OK_COUNT=0
FAIL_COUNT=0
GAP=1
for i in `cat apt_sites.txt`
do
#Acquire STATUS_CODE
STATUS_CODE=`curl -o /dev/null -s -w %{http_code} $i`
echo -e "$i:\t$STATUS_CODE"
#Acquire First CODE
k=100
((JUDGE_CODE=$STATUS_CODE/$k))
#Judge CODE status
if [ $JUDGE_CODE -le 3 ];
    then
       echo "$url--Connection success--"
       ((OK_COUNT=$OK_COUNT+$GAP))
    else
       echo "$url--Connection fail--"
       ((FAIL_COUNT=$FAIL_COUNT+$GAP))
    fi
    sleep 0.5
done
echo "------Apt Connection status------"
echo ">>>>>>Connection success number：$OK_COUNT"
echo ">>>>>>Connection fail number：$FAIL_COUNT"
echo "----------------------------------"


OK_COUNT=0
FAIL_COUNT=0
GAP=1
for i in `cat docker_sites.txt`
do
#Acquire STATUS_CODE
STATUS_CODE=`curl -o /dev/null -s -w %{http_code} $i`
echo -e "$i:\t$STATUS_CODE"
#Acquire First CODE
k=100
((JUDGE_CODE=$STATUS_CODE/$k))
#Judge CODE status
if [ $JUDGE_CODE -le 3 ];
    then
       echo "$url--Connection success--"
       ((OK_COUNT=$OK_COUNT+$GAP))
    else
       echo "$url--Connection fail--"
       ((FAIL_COUNT=$FAIL_COUNT+$GAP))
    fi
    sleep 0.5
done
echo "------Docker Connection status------"
echo ">>>>>>Connection success number：$OK_COUNT"
echo ">>>>>>Connection fail number：$FAIL_COUNT"
echo "----------------------------------"
