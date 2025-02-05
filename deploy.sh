#!/bin/bash
    echo hi123
    sh 'chmod +x build.sh'
    sh './build.sh'
    docker login -u thiyanesh1333 -p THIY@2003
    docker tag test thiyanesh1333/task2
    docker push thiyanesh1333/task2
    
