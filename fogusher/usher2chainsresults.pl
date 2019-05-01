:-consult('fogusher').

%query(placement(ucdavis_cctv,[on(cctv_driver1,mannLab), on(feature_extr1,firePolice), on(lightweight_analytics1,isp), on(alarm_driver1,firePolice), on(cctv_driver,parkingServices), on(feature_extr,studentCenter), on(lightweight_analytics,isp), on(alarm_driver,firePolice), on(wan_optimiser,isp), on(storage,cloud), on(video_analytics,cloud)],R)).

% placement(ucdavis_cctv,[on(cctv_driver1,mannLab), on(feature_extr1,firePolice), on(lightweight_analytics1,isp), on(alarm_driver1,firePolice), on(cctv_driver,parkingServices), on(feature_extr,studentCenter), on(lightweight_analytics,isp), on(alarm_driver,firePolice), on(wan_optimiser,isp), on(storage,cloud), on(video_analytics,cloud)],[(lifeSciences, studentCenter, 15, [(cctv_driver, feature_extr)]), (parkingServices, lifeSciences, 15, [(cctv_driver, feature_extr)]), (studentCenter, isp, 23, [(feature_extr, wan_optimiser), (feature_extr, lightweight_analytics)]), (mannLab, firePolice, 15, [(cctv_driver1, feature_extr1)]), (firePolice, isp, 8, [(feature_extr1, lightweight_analytics1)]), (isp, firePolice, 2, [(lightweight_analytics1, alarm_driver1), (lightweight_analytics, alarm_driver)]), (isp, cloud, 10, [(wan_optimiser, storage)])]):      0.9594396

%query(placement(ucdavis_cctv,[on(cctv_driver1,mannLab), on(feature_extr1,lifeSciences), on(lightweight_analytics1,firePolice), on(alarm_driver1,firePolice), on(cctv_driver,parkingServices), on(feature_extr,studentCenter), on(lightweight_analytics,isp), on(alarm_driver,firePolice), on(wan_optimiser,isp), on(storage,cloud), on(video_analytics,cloud)],R)).   

%query(placement(ucdavis_cctv,[on(cctv_driver1,mannLab), on(feature_extr1,mannLab), on(lightweight_analytics1,firePolice), on(alarm_driver1,firePolice), on(cctv_driver,parkingServices), on(feature_extr,studentCenter), on(lightweight_analytics,isp), on(alarm_driver,firePolice), on(wan_optimiser,isp), on(storage,cloud), on(video_analytics,cloud)],R)).

% placement(ucdavis_cctv,[on(cctv_driver1,mannLab), on(feature_extr1,mannLab), on(lightweight_analytics1,firePolice), on(alarm_driver1,firePolice), on(cctv_driver,parkingServices), on(feature_extr,studentCenter), on(lightweight_analytics,isp), on(alarm_driver,firePolice), on(wan_optimiser,isp), on(storage,cloud), on(video_analytics,cloud)],[(lifeSciences, studentCenter, 15, [(cctv_driver, feature_extr)]), (parkingServices, lifeSciences, 15, [(cctv_driver, feature_extr)]), (studentCenter, isp, 23, [(feature_extr, wan_optimiser), (feature_extr, lightweight_analytics)]), (mannLab, firePolice, 8, [(feature_extr1, lightweight_analytics1)]), (isp, firePolice, 1, [(lightweight_analytics, alarm_driver)]), (isp, cloud, 10, [(wan_optimiser, storage)])]):  0.9594396

%query(placement(ucdavis_cctv,[on(cctv_driver1,mannLab), on(feature_extr1,sciencesLectureHall), on(lightweight_analytics1,firePolice), on(alarm_driver1,firePolice), on(cctv_driver,parkingServices), on(feature_extr,studentCenter), on(lightweight_analytics,isp), on(alarm_driver,firePolice), on(wan_optimiser,isp), on(storage,cloud), on(video_analytics,cloud)],R)).

query(placement(ucdavis_cctv,[on(cctv_driver1,mannLab), on(feature_extr1,studentCenter), on(lightweight_analytics1,isp), on(alarm_driver1,firePolice), on(cctv_driver,parkingServices), on(feature_extr,studentCenter), on(lightweight_analytics,isp), on(alarm_driver,firePolice), on(wan_optimiser,isp), on(storage,cloud), on(video_analytics,cloud)],R)).