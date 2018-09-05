@echo off
set /P id=Enter name for folder: 

mkdir %id%
cd %id%

@echo npm init > init_npm.bat
call ./init_npm.bat

@echo npm install express -g > install_express.bat
call ./install_express.bat

@echo npm install express-generator -g > install_express_generator.bat
call ./install_express_generator.bat

@echo express --view=pug %id% > express_initializer.bat
call ./express_initializer.bat


cd %id%


@echo npm install > npm_app_installer.bat
call ./npm_app_installer.bat

del "./npm_app_installer.bat"
cd ..
del "./init_npm.bat"
del "./install_express.bat"
del "./install_express_generator.bat"
del "./express_initializer.bat"

cd %id%

 start "" http://127.0.0.1:3000
@echo npm start > app_launcher.bat
call ./app_launcher.bat

