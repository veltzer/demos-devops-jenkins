# Calc
Simple Calculator Project which shows usage of cobertura

To create cobertura report either use:
* `mvn clean cobertura:cobertura`
or
* `mvn clean package`

Test Management Results:
<https://dev.azure.com/kavyatech/DemoCalculator/_TestManagement/Runs?runId=30&_a=runCharts>

**CI:**
[![Build Status](https://dev.azure.com/kavyatech/CalculatorProject/_apis/build/status/kpassoubady.Calc?branchName=master)](https://dev.azure.com/kavyatech/CalculatorProject/_build/latest?definitionId=31&branchName=master)

**Quality Gates:**
[![Quality Gate Status](https://sonarqube-azureappservice6526.azurewebsites.net/api/project_badges/measure?project=SimpleCalculator&metric=alert_status)](https://sonarqube-azureappservice6526.azurewebsites.net/dashboard?id=SimpleCalculator)

Jenkins Pipeline:
[![Build Status](http://ec2-35-153-152-182.compute-1.amazonaws.com:8080/buildStatus/icon?job=Calc-Maven-Simple-Ubuntu-Project)](http://ec2-35-153-152-182.compute-1.amazonaws.com:8080/job/Calc-Maven-Simple-Ubuntu-Project/)
