##Code Book for Getting and Cleaning Data Course Project

###Description
This is the code book explaining the variabels & elements used in the attached tidy data set https://github.com/aamahat/Getting_and_Cleaning_Data_Course_Project/blob/master/tidy_data.txt.

Tidy data represents average of each variable for each activity and each subject from the original data which is available at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip. Original data consists of 561 measurements out of which only Mean & Standard Deviation related measurements are avialable in tidy dataset.  

###Identifiers

Data is grouped with respect to each subject & each activity. 

* subject - An identifier of the subject who carried out the experiment
* activity - The type of activity performed when the corresponding measurements were taken
* variable - Measurements related to mean & standard deviation

###Activity Labels

Consists of six activity labels namely - 

1. WALKING
2. WALKING_UPSTAIRS
3. WALKING_DOWNSTAIRS
4. SITTING
5. STANDING
6. LAYING


###Measurements

Consists of following 66 measurements - 

 1 timeBodyAccelerometer-Mean()-X                  
 2 timeBodyAccelerometer-Mean()-Y                  
 3 timeBodyAccelerometer-Mean()-Z                  
 4 timeBodyAccelerometer-StdDev()-X                
 5 timeBodyAccelerometer-StdDev()-Y                
 6 timeBodyAccelerometer-StdDev()-Z                
 7 timeGravityAccelerometer-Mean()-X               
 8 timeGravityAccelerometer-Mean()-Y               
 9 timeGravityAccelerometer-Mean()-Z               
10 timeGravityAccelerometer-StdDev()-X             
11 timeGravityAccelerometer-StdDev()-Y             
12 timeGravityAccelerometer-StdDev()-Z             
13 timeBodyAccelerometerJerk-Mean()-X              
14 timeBodyAccelerometerJerk-Mean()-Y              
15 timeBodyAccelerometerJerk-Mean()-Z              
16 timeBodyAccelerometerJerk-StdDev()-X            
17 timeBodyAccelerometerJerk-StdDev()-Y            
18 timeBodyAccelerometerJerk-StdDev()-Z            
19 timeBodyGyroscope-Mean()-X                      
20 timeBodyGyroscope-Mean()-Y                      
21 timeBodyGyroscope-Mean()-Z                      
22 timeBodyGyroscope-StdDev()-X                    
23 timeBodyGyroscope-StdDev()-Y                    
24 timeBodyGyroscope-StdDev()-Z                    
25 timeBodyGyroscopeJerk-Mean()-X                  
26 timeBodyGyroscopeJerk-Mean()-Y                  
27 timeBodyGyroscopeJerk-Mean()-Z                  
28 timeBodyGyroscopeJerk-StdDev()-X                
29 timeBodyGyroscopeJerk-StdDev()-Y                
30 timeBodyGyroscopeJerk-StdDev()-Z                
31 timeBodyAccelerometerMagnitude-Mean()           
32 timeBodyAccelerometerMagnitude-StdDev()         
33 timeGravityAccelerometerMagnitude-Mean()        
34 timeGravityAccelerometerMagnitude-StdDev()      
35 timeBodyAccelerometerJerkMagnitude-Mean()       
36 timeBodyAccelerometerJerkMagnitude-StdDev()     
37 timeBodyGyroscopeMagnitude-Mean()               
38 timeBodyGyroscopeMagnitude-StdDev()             
39 timeBodyGyroscopeJerkMagnitude-Mean()           
40 timeBodyGyroscopeJerkMagnitude-StdDev()         
41 frequencyBodyAccelerometer-Mean()-X             
42 frequencyBodyAccelerometer-Mean()-Y             
43 frequencyBodyAccelerometer-Mean()-Z             
44 frequencyBodyAccelerometer-StdDev()-X           
45 frequencyBodyAccelerometer-StdDev()-Y           
46 frequencyBodyAccelerometer-StdDev()-Z           
47 frequencyBodyAccelerometerJerk-Mean()-X         
48 frequencyBodyAccelerometerJerk-Mean()-Y         
49 frequencyBodyAccelerometerJerk-Mean()-Z         
50 frequencyBodyAccelerometerJerk-StdDev()-X       
51 frequencyBodyAccelerometerJerk-StdDev()-Y       
52 frequencyBodyAccelerometerJerk-StdDev()-Z       
53 frequencyBodyGyroscope-Mean()-X                 
54 frequencyBodyGyroscope-Mean()-Y                 
55 frequencyBodyGyroscope-Mean()-Z                 
56 frequencyBodyGyroscope-StdDev()-X               
57 frequencyBodyGyroscope-StdDev()-Y               
58 frequencyBodyGyroscope-StdDev()-Z               
59 frequencyBodyAccelerometerMagnitude-Mean()      
60 frequencyBodyAccelerometerMagnitude-StdDev()    
61 frequencyBodyAccelerometerJerkMagnitude-Mean()  
62 frequencyBodyAccelerometerJerkMagnitude-StdDev()
63 frequencyBodyGyroscopeMagnitude-Mean()          
64 frequencyBodyGyroscopeMagnitude-StdDev()        
65 frequencyBodyGyroscopeJerkMagnitude-Mean()      
66 frequencyBodyGyroscopeJerkMagnitude-StdDev()

