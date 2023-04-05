#!/bin/bash
mkdir -p ./output

Basic_Analysis(){
    # For basic Analysis & Manifest file   
    python3 ./scripts/Info.py "$1"
    Welcome "$1"
}

Androguard_Analyze(){
    # Androguard Analyze the APK file
    androlyze "$1"
    Welcome "$1"
}

GUI_Analysis(){
    androguard gui -i "$1"
    Welcome "$1"
}

Signature_Retreive(){
    androguard sign -a "$1"
    Welcome "$1"
}

Obtain_ASRC(){
    androguard arsc -o ./output/arsc "$1"
    echo "ARSC File created in the output directory"
    Welcome "$1"
}

Decompile_APK(){
    python3 ./scripts/Decompile.py "$1"
    Welcome "$1"
}

Welcome(){
    figlet "APKSecure"
    printf "1. Basic APK Analysis & Manifest Generation\n2. APK Analysis with Androguard\n3. Obtain Certificates\n4. Obtain ASRC\n5. Decompile APK\n"
    read -r option
    case "${option}" in
        1)
            Basic_Analysis "$1"
        ;;
        2)
            Androguard_Analyze "$1"
        ;;
        3)
            Signature_Retreive "$1"
        ;;
        4)
            Obtain_ASRC "$1"
        ;;
        5)
            Decompile_APK "$1"
        ;;
        *)
            echo "Invalid Option"
        ;;
    esac
}

Welcome "$1"
