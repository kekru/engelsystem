# Test files
Be sure to place your Testfiles in [test/model](model).  
If you need an other folder, define it in test/phpunit.xml  

The Name must be *Test.php (with an uppercase T).  

Inside the File define a class also called *Test,  
e.g. class LogEntries_model_Test extends PHPUnit_Framework_TestCase {...}


# Add Travis CI to your engelsystem fork  
Login to GitHub with the Admin account of the engelsystem fork  
Go to https://travis-ci.org/  
Click on the loginbutton and you will be requested to give travis-ci some rights  

Now you're logged in into travis-ci.  
Click on the + on the left side of the screen next to "My Repositories"  
Enable the switch next to the engelsystem

When someone pushes to the GitHub Repository, Travis-Ci wil start running tests  

Be sure to replace the "build passing/build failing" image on engelsystem/README.md with the correct one.  
Just click on the "build passing/build failing" image you see in travis-ci.org and choose Markdown and copy the code in the README.md.