@echo off
set startpath=%CD%
cd C:\Users\lopez\OneDrive\Escritorio\Prueba\
java -jar FilexPlOOrer.jar indexar %*
cd %startpath%