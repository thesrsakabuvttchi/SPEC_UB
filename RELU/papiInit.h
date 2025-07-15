#include<papi.h>
#include<stdio.h>
#include<stdlib.h>
#define MAXEVENTS 5

PAPI_event_info_t info;
int retval,errors;
long long values[MAXEVENTS ], cvalues[MAXEVENTS];
double spread[MAXEVENTS];
int nevents = 0;
int eventset = PAPI_NULL;
int events[MAXEVENTS] = {
	PAPI_RES_STL,
	PAPI_BR_NTK,
	PAPI_BR_INS,
	PAPI_BR_MSP,
	PAPI_TOT_INS
};
long long t1, t2, t3;

char event_names[MAXEVENTS][256] = {
	"PAPI_RES_STL",
	"PAPI_BR_NTK",	// not taken
	"PAPI_BR_INS",	// total branches
	"PAPI_BR_MSP",	// branches mispredicted
	"PAPI_TOT_INS"
 };

void init_papi_vars()
{
    /* Clear out the results to zero */
	for ( int i = 0; i < MAXEVENTS; i++ ) {
		values[i] = 0;
	}

	retval = PAPI_library_init( PAPI_VER_CURRENT );
	if (retval != PAPI_VER_CURRENT ) {
		printf("Version Error!\n");
		exit(-1);
	}

	retval = PAPI_create_eventset( &eventset );
	if (retval) {
		printf("Error creating eventset!\n");
		exit(-1);
	}

	//Find which events are supported
	for (int i = 0; i < MAXEVENTS; i++ ) {
		if ( PAPI_query_event( events[i] ) != PAPI_OK )
		{
			continue;
		}
		if ( PAPI_add_event( eventset, events[i] ) == PAPI_OK )  //ADD supported events
		{
			events[nevents] = events[i];
			nevents++;
		}
		else
		{
			printf("Failed %s\n",event_names[i]);
		}
	}
}

void clear_cvals()
{
    for ( int i = 0; i < MAXEVENTS; i++ ) {
		cvalues[i] = 0;
	}

}