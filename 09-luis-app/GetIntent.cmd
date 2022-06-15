@echo off

rem Set values for your Language Understanding app
set app_id=489f0c46-9699-4b5a-8ccb-41da5439c8ae
set endpoint=https://lang-khumbal.cognitiveservices.azure.com/
set key=e3819feb3ae1443ca7f7a16973cc32b8

rem Get parameter and encode spaces for URL
set input=%1
set query=%input: =+%

rem Use cURL to call the REST API
curl -X GET "%endpoint%/luis/prediction/v3.0/apps/%app_id%/slots/production/predict?subscription-key=%key%&log=true&query=%query%"