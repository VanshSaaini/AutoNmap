#!/bin/bash
echo -e "\e[31m******************************************\e[0m"
echo -e "\e[31m                AutoNmap                   \e[0m"  
echo -e "\e[31m******************************************\e[0m"
echo
echo -e "\e[32m[01] Scan a single IP.\e[0m"
echo -e "\e[32m[02] Scan a range of IPs.\e[0m"
echo -e "\e[32m[03] Scan a subnet.\e[0m"
echo -e "\e[32m[04] Detect OS and Services.\e[0m"
echo -e "\e[32m[05] Scan Specific ports.\e[0m"
echo -e "\e[32m[06] Fast scan (top 100 pots).\e[0m"
echo -e "\e[32m[07] Use Aggressive scan.\e[0m"

echo

echo -n "> What you want to perform: "
read response

echo

echo -n "> Enter the Target IPv4: "
read ipv4

echo

read -p "> You want scan report in other file[yes] or right here[no]: " response1

scanningofipv4(){
    
case $response in
    01 ) if [["$response1" == "yes"]]
         then
            nmap $ipv4 >> "ipscanresult.txt" 
         else
            nmap $ipv4 
        fi
    
    ;;
    02 ) if $response1 == "yes" 
         then
            nmap $ipv4 >> "ipscanresult.txt" 
         else
            nmap $ipv4 
         fi
    
    ;;
    03 ) if $response1 == "yes" 
         then
            nmap $ipv4 >> "ipscanresult.txt" 
         else
            nmap $ipv4 
         fi 
    
     ;;
    04 ) if $response1 == "yes" 
         then
            nmap -A $ipv4 >> "ipscanresult.txt" 
         else
            nmap $ipv4 
         fi 
    
    ;;
    05 ) if $response1 == "yes" 
         then
            nmap -p $ipv4 >> "ipscanresult.txt"  
         else
            nmap $ipv4 
         fi 
    
    ;;
    06 ) if $response1 == "yes" 
         then
            nmap -F $ipv4 >> "ipscanresult.txt" 
         else
            nmap $ipv4 
         fi 
    
    
    ;;
    07 ) if $response1 == "yes" 
         then
             nmap -T4 -A $ipv4 >> "ipscanresult.txt"
         else
            nmap $ipv4 
         fi 
    
    ;;
esac  

}

scanningofipv4
