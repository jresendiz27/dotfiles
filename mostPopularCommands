#!/usr/bin/env groovy
def mostRepeated = [:]
new File("~/.zsh_history").eachLine { line ->      
    firstLine = line.split(";")
    if(firstLine.size() > 1) {
        command = firstLine[1].split(" ")[0]
        if(!mostRepeated.containsKey(command)) {
            mostRepeated["${command}"] = 0
        } else {
            mostRepeated["${command}"]++
        }
    }
}
int count = 0
int limit = args[0] ? args[0] as int : 100
mostRepeated.sort { -it.value }.each {
    if(count <= limit) {
        println "$it.key --> $it.value"
        count++
    }
}
