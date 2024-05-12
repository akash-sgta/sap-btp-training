sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'trainingfiori/test/integration/FirstJourney',
		'trainingfiori/test/integration/pages/CategoriesList',
		'trainingfiori/test/integration/pages/CategoriesObjectPage',
		'trainingfiori/test/integration/pages/CoursesObjectPage'
    ],
    function(JourneyRunner, opaJourney, CategoriesList, CategoriesObjectPage, CoursesObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('trainingfiori') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheCategoriesList: CategoriesList,
					onTheCategoriesObjectPage: CategoriesObjectPage,
					onTheCoursesObjectPage: CoursesObjectPage
                }
            },
            opaJourney.run
        );
    }
);