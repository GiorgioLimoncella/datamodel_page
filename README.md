A ConcePTION script is composed of multiple steps. In each step, one or more datasets are required as input and one or more new datasets are produced as output. 
This page described the data models of such datasets. Datasets are divided into three groups: 

* [datasets to be exported](https://github.com/ARS-toscana/Complex-script/wiki/Data-Model#export_list)
* [main datasets](https://github.com/ARS-toscana/Complex-script/wiki/Data-Model#main_list)
* [functional datasets](https://github.com/ARS-toscana/Complex-script/wiki/Data-Model#functional_list)

## <a name="export_list"></a> Datasets to be exported
<br>

<ul>
<li>count codes for all concept sets: 
<ul>  
  <li><a href="#t1_1">D4_<I>CONCEPTSET</i>code_counts<i>YEAR</i>.csv</a></li>
  <li><a href="#tc1_1">QC_code_counts_in_CDMinstance<I>CONCEPTSETYEAR</i>.csv</a></li>
  <li><a href="#tc1_3">QC_code_counts_in_study_population<i>OUTCOMES_TYPE_year</i>.csv</a></li>
</ul> 
<li>flowchart: <a href="#t1_2">FlowChart.csv</a></li>
<li>study population: D4_study_population (not shared)</li>
<li>descriptive of the population
<ul>
    <li><a href="#t1_4">D4_descriptive_dataset_age_<I>OBJECTIVE</I>.csv</a></li>
    <li><a href="#t1_5">D4_descriptive_dataset_ageband_<I>OBJECTIVE</I>.csv</a></li>
    <li><a href="#t1_6">D4_descriptive_dataset_covariate.csv</a></li>
    <li><a href="#tc1_d1">D4_descriptive_dataset_entry_year_<I>OBJECTIVE</I>.csv</a></li>
    <li><a href="#tc1_d2">D4_descriptive_dataset_risk_factors.csv</a></li>
</ul>
<li>detailed comparison between some algorithms for outcomes: <a href="#t1_7">D4_algorithm_comparison_<i>OUTCOME</i>.csv</a></li>
<li>comparison among all meanings and concept sets of all outcomes: <a href="#t1_8">D3_beyond_HOSP_PC_components_<i>OUTCOME</i>.csv</a></li>
<li>person time and occurrence of outcomes: <ul> 
         <li><a href="#t1_9">D4_persontime_ALL_OUTCOMES_year.csv</a></li> 
<li><a href="#">D4_persontime_ALL_OUTCOMES_month.csv</a></li></ul>
<li><a href="#tc1_2">QC_all_components_<i>OUTCOMES</i>.csv</a></li>
</ul>

## <a name="main_list"></a> Main datasets
<br>

<ul>
<li><a href="#t2_2">D3_components_<i>OUTCOME</i>.RData</a></li>
<li><a href="#t2_2">D3_events_ALL_OUTCOMES.RData</a></li>
<li><a href="#t2_3">D3_selection_criteria.RData</a></li>
<li><a href="#t2_4">D3_study_population_covariates.RData</a></li>
<li><a href="#t2_5">D4_algorithm_comparison_<i>OUTCOMES</i>_intermediate.RData</a></li>
</ul>

## <a name="functional_list"></a> Functional datasets
<br>


<ul>
<li><a href="#t3_1">D3_events_<i>OUTCOME_TYPE</i>.RData</a></li>
<li><a href="#t3_2">D3_study_population_DP.RData</a></li>
</ul>



<br>
<br>
<br>
<a name="t1_1"></a><hr />
<br>
<br>
<br>

  #### D4_<i>CONCEPTSET</i>code_counts<i>YEAR</i>.csv

[Example]()

Unit of observation: each <I>CODVAR</I> for each <I>meaning_of_event</I>

For each <I>CONCEPSET</I>**, for each type (among narrow and possible), for each YEAR in the study period, this table counts the occurrence of each code, stratified per meaning
<table>
<thead>
<tr><th>Variable name </th><th>	Dictionary of variable name</th><th>	Dictionary of variable</th><th>	Description</th><th>	Format</th><th>	Notes</th></tr>
</thead>
<tbody>

<tr><td>codvar</td><td>	</td><td>	</td><td>	All the codes in the concept set</td><td>	string</td><td>	</td></tr>
<tr><td>meaning_of_<I>OBJECT_OF_DATADOMAIN</I></td><td>	<I>OBJECT_OF_DATADOMAIN</I> may be ... </td><td>	whatever is in the meaning_of_events column, if the data domain of the concept set is  Diagnosis, or in meaning_of_ , if the data domain of the concept set is Medicines</td><td> 	Stratification</td><td>	string</td><td>	</td></tr>
<tr><td>count_n</td><td>	</td><td>	</td><td>	Number of occurrences of the combination code/meaning</td><td>	integer</td><td>	</td></tr>


</tbody>
</table>
** <I>CONCEPSETS</I> may be ... <br>
<a href="#export_list"> Back to list </a>

<br>
<br>
<br>
<a name="t1_2"></a> <hr />
<br>
<br>
<br>

 #### FlowChart.csv

[Example]()

Unit of observation: Exclusion criteria applied

Every row refers to an exclusion criterion
<table>
<thead>
<tr><th>Variable name </th><th>	Dictionary of variable</th><th>	Description</th><th>	Format</th><th>	Notes</th></tr>
</thead>
<tbody>
<tr><td>A_sex_or_birth_date_missing</td><td>	0 = to be included<br>
1= to be excluded</td><td>	Quality check: sex or birth date mssing</td><td>	integer</td><td>	</td></tr>
<tr><td>B_birth_date_absurd</td><td>	0 = to be included<br>
1= to be excluded</td><td>	Quality check: birth date absurd</td><td>	integer</td><td>	</td></tr>
<tr><td>C_not_female</td><td>	0 = to be included <br>
1= to be excluded</td><td>	The person is not female</td><td>	integer</td><td>	</td></tr>
<tr><td>D_not_in_fertile_age_at_study_entry_date</td><td>	0 = to be included<br>
1= to be excluded</td><td>	The female had age less than 12 or higher than 55</td><td>	integer</td><td>	</td></tr>
<tr><td>E_insufficient_run_in</td><td>	0 = to be included<br>
1= to be excluded</td><td>	The female had insufficient look back period (5 years) </td><td>	integer</td><td>	</td></tr>

<tr><td>F_death_before_study_entry</td><td>	0 = to be included<br> 1= to be excluded	</td><td>	The female died before entering the study</td><td>	integer</td><td>	</td></tr>

<tr><td>N</td><td>	</td><td>	Number of people with the corresponding combination of the previous variables</td><td>	integer</td><td>	</td></tr>

</tbody>
</table><br>
<a href="#export_list"> Back to list </a>


<br>
<br>
<br>
<a name="t1_4"></a><hr />
<br>
<br>
<br>


  #### D4_descriptive_dataset_age.csv

[Example]()

Descriptive of age at study entry, for all the population
<table>
<thead>
<tr><th>Variable name </th><th>	Dictionary of variable</th><th>	Description</th><th>	Format</th><th>	Notes</th></tr>
</thead>
<tbody>

<tr><td>X1</td><td>	Min:<br> minimum of age distribution<br><br>
1st Qu.:<br> First quartile of age distribution<br><br>
Median: <br>median quartile of age distribution<br><br>
Mean:<br> mean quartile of age distribution<br><br>
3rd Qu.: <br>Third quartile quartile of age distribution<br><br>
Max: <br>maximum of age distribution</td><td>	Statistical value of distribution</td><td>	string</td><td>	</td></tr>
<tr><td>age_at_study_entry</td><td>                	</td><td>	Value of age at study entry</td><td>	numeric</td><td>	</td></tr>


</tbody>
</table><br>
<a href="#export_list"> Back to list </a>


<br>
<br>
<br>
<a name="t1_5"></a><hr />
<br>
<br>
<br>

  #### D4_descriptive_dataset_ageband.csv

[Example]()

Unit of observation: each age band

Occurrences of agebands at study entry, for all the population
<table>
<thead>
<tr><th>Variable name </th><th>	Dictionary of variable</th><th>	Description</th><th>	Format</th><th>	Notes</th></tr>
</thead>
<tbody>

<tr><td>age_strata_at_study_entry </td><td>               	12-19, 20-29, 30-39, 40-49, 50-55</td><td>	Ageband of age at study entry</td><td>	string</td><td>	</td></tr>
<tr><td>frequency</td><td>	</td><td>	Value of frequency in specific ageband</td><td>	numeric</td><td>	</td></tr>

</tbody>
</table><br>
<a href="#export_list"> Back to list </a>


<br>
<br>
<br>
<a name="t1_6"></a><hr />
<br>
<br>
<br>

 #### D4_descriptive_dataset_covariate.csv

[Example]()

Occurrences of <I>COVARIATES<I>*** at study entry, in all the population
<table>
<thead>
<tr><th>Variable name </th><th>	Dictionary of variable</th><th>	Description</th><th>	Format</th><th>	Notes</th></tr>
</thead>
<tbody>
<tr><td>all_covariates_non_CONTR</td><td>	First row: those with the variable = 0 ; second row: those with the variable =1</td><td>	This counts all persons who have at least one of the covariates or proxy = 1</td><td>	integer</td><td>	</td></tr>
<tr><td><I>COVARIATE</I>_at_study_entry
</td><td>	First row: those with the variable =0 ; second row: those with the variable =1</td><td>	This counts all persons who have at least a record of a diagnosis of the covariate</td><td>	integer</td><td>	</td></tr>
<tr><td>DP_<I>COVARIATE</I>_at_study_entry</td><td>	First row: those with the variable =0 ; second row: those with the variable =1</td><td>	This counts all persons who have at least 2 records of the drug proxy for the covariate </td><td>	integer</td><td>	All covariate in the list above </td></tr>
<tr><td><I>COVARIATE</I>_either_DX_or_DP</td><td>	First row: those with the variable =0 ; second row: those with the variable =1</td><td>	This counts all persons who have either at least a diagnosis or at least 2 records of the drug proxy for the covariate </td><td>	integer</td><td>	All covariate in the list above</td></tr>

</tbody>
</table>
*** <I>COVARIATE</I> may be ...<br>
<a href="#export_list"> Back to list </a>

<br>
<br>
<br>
<a name="tc1_d1"></a><hr />
<br>
<br>
<br>

 #### D4_descriptive_dataset_entry_year.csv

| Variable name       | Dictionary of variable name | Dictionary of variable | Description | Format | Notes |
|---------------------|-----------------------------|------------------------|-------------|--------|-------|
| year_at_study_entry |                             |                        |             |        |       |
| frequency           |                             |                        |             |        |       |

<a href="#export_list"> Back to list </a>

<br>
<br>
<br>
<a name="tc1_d2"></a><hr />
<br>
<br>
<br>

 #### D4_descriptive_dataset_risk_factors.csv

| Variable name                                        | Dictionary of variable name | Dictionary of variable | Description | Format | Notes |
|------------------------------------------------------|-----------------------------|------------------------|-------------|--------|-------|
| covariates_during_study_period                       |                             |                        |             |        |       |
| <i>EVENT</i>_in_study                                 |                             |                        |             |        |       |
| <i>EVENT</i>_at_study_entry_secondary_e               |                             |                        |             |        |       |
| <i>EVENT</i>_either_DX_or_DP_at_study_entry_secondary_e |                             |                        |             |        |       |

<a href="#export_list"> Back to list </a>
<br>
<br>
<br>
<a name="t1_7"></a><hr />
<br>
<br>
<br>

 #### D4_algorithm_comparison_<i>OUTCOME</i>.csv

[Example]()

Unit of observation: algorithm (component and non-component)

<table>
<thead>
<tr><th>Variable name </th><th>	Dictionary of variable name</th><th>	Dictionary of variable</th><th>	Description</th><th>	Format</th><th>	Notes</th></tr>
</thead>
<tbody>

<tr><td>ord_alg</td><td>	</td><td>	Components: <br>
“1: narrow HOSP”<br>
“2: narrow PC”<br>
“3: possible HOSP”<br>
“4: possible PC”<br>
<br>
Composites: <br>
“5: 1 OR 3”<br>
“6: 1 OR 2”<br>
“7: 3 OR 4” <br>
“8: 5 OR 2” <br>
“9: 5 OR 4” <br>
“10: 2 OR 4” <br>
“11: 5 OR 10” <br>
“12: 6 OR 7” </td><td>	Component and composite algorithms analysed</td><td>	string</td><td>	</td></tr>
<tr><td>N_00</td><td>	</td><td>	</td><td>	Number of persons not detected by either algorithms</td><td>	integer</td><td>	</td></tr>
<tr><td>N_</td><td>	</td><td>	</td><td>	Number of persons detected by no algorithm</td><td>	integer</td><td>	</td></tr>
<tr><td>N_pop</td><td>	</td><td>	</td><td>	Number of persons in the population during the year, with no components in the previous year</td><td>	integer</td><td>	</td></tr>
<tr><td>N_10</td><td>	</td><td>	</td><td>	Number of persons detected only by the first member of the ‘OR’ expression (Algorithm A) or by the algorithm if it is a component</td><td>	integer</td><td>	</td></tr>
<tr><td>N_11</td><td>	</td><td>	</td><td>	Number of persons detected both by Algorithm_A and Algorithm_B</td><td>	integer</td><td>	</td></tr>
<tr><td>N_01</td><td>	</td><td>	</td><td>	Number of persons detected only by the second member of the ‘OR’ expression (Algorithm B) </td><td>	integer</td><td>	</td></tr>
<tr><td>ord_algA</td><td>	</td><td>	- : if row of components
number: number in according with algA</td><td>	Number of algorithm corresponding to A</td><td>	integer</td><td>	</td></tr>
<tr><td>ord_algB</td><td>	</td><td>	- : if row of components
number: number in according with algB</td><td>	Number of algorithm corresponding to B</td><td>	integer</td><td>	</td></tr>
<tr><td>PROP_</td><td>	</td><td>	</td><td>	Proportion of individuals in the algorithms over individuals in the population *100</td><td>	numeric</td><td>	</td></tr>
<tr><td>PROP_10</td><td>	</td><td>	</td><td>	Proportion of individuals detected only by Algorithm A over individuals in the population *100</td><td>	numeric</td><td>	</td></tr>
<tr><td>PROP_11</td><td>	</td><td>	</td><td>	Proportion of individuals detected by both algorithms over individuals in the population *100</td><td>	numeric</td><td>	</td></tr>
<tr><td>PROP_01</td><td>	</td><td>	</td><td>	Proportion of individuals detected only by Algorithm B over individuals in the population *100</td><td>	numeric</td><td>	</td></tr>


</tbody>
</table>
*<I>OUTCOME</I> may be equal to: ...<br>
<a href="#export_list"> Back to list </a>


<br>
<br>
<br><a name="t1_8"></a><hr />
<br>
<br>
<br>

 #### D3_beyond_HOSP_PC_components_<i>OUTCOME</i>.csv

[Example]()

For each <i>OUTCOME</i>* this table counts the subjects who are picked by whichever combination of type (among narrow and possible) and meaning. This component analysis is complementary to the component specified in the SAP, which cannot be applied since we have no DAP with both PC and HOSP


<table>
<thead>
<tr><th>Variable name </th><th>	Dictionary of variable name</th><th>	Dictionary of variable</th><th>	Description</th><th>	Format</th><th>	Notes</th></tr>
</thead>
<tbody>

<tr><td><I>TYPE_MEANING</I></td><td>	<I>TYPE</I>:<br> possible or narrow;<br><br> <I>MEANING</I>:<br> whatever is in the meaning_of_events column</td><td></td><td></td><td>binary</td><td></td></tr>
<tr><td>to_drop</td><td></td><td>1= person to drop<br><br>0= person to keep</td><td>1=for those sucjects who had at least one component >0 in the previous year <br><br>0= otherwise</td><td>binary</td><td>	</td></tr>
<tr><td>N</td><td></td><td></td><td>Number of subjects</td><td>	integer</td><td></td></tr>


</tbody>
</table>
*<I>OUTCOME</I> may be equal to: ...

<a href="#export_list"> Back to list </a>
<br>
<br>
<br><a name="t1_9"></a><hr />
<br>
<br>
<br>


 #### D4_persontime_ALL_OUTCOMES_year.csv

[Example]()

<table>
<thead>
<tr><th>Variable name </th><th>	Dictionary of variable</th><th>	Description</th><th>	Format</th><th>	Notes</th></tr>
</thead>
<tbody>

<tr><td>sex</td><td>	0 = female <br>
1 = male</td><td>	sex at instance creation</td><td>	from </td><td>cdm	</td></tr>
<tr><td>year        </td><td>             	2017, …, 2020</td><td>	Year in the study</td><td>	data</td><td>	</td></tr>
<tr><td>Ageband</td><td>	12-19, 20-29, 30-39, 40-49, 50-55</td><td>	ageband</td><td>	</td><td>	</td></tr>
<tr><td>Persontime</td><td>	</td><td>	Person time in the study, in days</td><td>	integer</td><td>	</td></tr>
<tr><td>Persontime_<I>OUTCOME_TYPE<I></td><td>	<I>TYPE</I>: broad or narrow; <I>OUTCOME</I>: any outcome</td><td>	Person time of the outcome <I>OUTCOME_TYPE</I>, in days</td><td>	integer</td><td>	</td></tr>
<tr><td><I>OUTCOME_TYPE<I>_b</td><td>	<I>TYPE</I>: broad or narrow; <I>OUTCOME</I>: any outcome</td><td>	Incident cases of the outcome <I>OUTCOME_TYPE<I></td><td>	integer</td><td>	</td></tr>

</tbody>
</table>
*<I>OUTCOME</I> may be equal to: ...<br>
<a href="#export_list"> Back to list </a>


<br>
<br>
<br><a name="tc1_1"></a><hr /><--!°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°° COMPLEX DATAMODEL°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°->
<br>
<br>
<br>

#### QC_code_counts_in_CDMinstanceCONCEPTSETYEAR.csv

|      Variable name      | Dictionary of variable name | Dictionary of variable | Description | Format | Notes |
|:-----------------------:|:---------------------------:|:----------------------:|:-----------:|:------:|:-----:|
| codvar                  |                             |                        |  All the codes in the concept set |    string    |       |
| meaning_of_event        | event may be ...            |                        |   Stratification           |    string    |       |
| event_record_vocabulary |                             |                        |             |        |       |
| count_n                 |                             |                        |       Number of occurrences of the combination code/meaning      |    integer |       |

<a href="#export_list"> Back to list </a>

<br>
<br>
<br><a name="tc1_2"></a><hr />
<br>
<br>
<br>

#### QC_all_components_<i>OUTCOMES</i>.csv

| Variable name                      | Dictionary of variable name | Dictionary of variable | Description | Format | Notes |
|------------------------------------|-----------------------------|------------------------|-------------|--------|-------|
| narrow_emergency_room_diagnosis    |                             |                        |             |        |       |
| narrow_exemption                   |                             |                        |             |        |       |
| narrow_hospitalisation_primary     |                             |                        |             |        |       |
| narrow_hospitalisation_secondary   |                             |                        |             |        |       |
| possible_emergency_room_diagnosis  |                             |                        |             |        |       |
| possible_exemption                 |                             |                        |             |        |       |
| possible_hospitalisation_primary   |                             |                        |             |        |       |
| possible_hospitalisation_secondary |                             |                        |             |        |       |
| broad_emergency_room_diagnosis     |                             |                        |             |        |       |
| broad_exemption                    |                             |                        |             |        |       |
| broad_hospitalisation_primary      |                             |                        |             |        |       |
| broad_hospitalisation_secondary    |                             |                        |             |        |       |
| todrop                             |                             |                        |             |        |       |
| N                                  |                             |                        |             |        |       |

<a href="#export_list"> Back to list </a>

<br>
<br>
<br><a name="tc1_3"></a><hr />
<br>
<br>
<br>

#### QC_code_counts_in_study_population<i>OUTCOMES_TYPE_year</i>.csv

| Variable name                     | Dictionary of variable name | Dictionary of variable | Description | Format | Notes |
|-----------------------------------|-----------------------------|------------------------|-------------|--------|-------|
| meaning_of_first_event            |                             |                        |             |        |       |
| coding_system_of_code_first_event |                             |                        |             |        |       |
| code_first_event                  |                             |                        |             |        |       |
| count_n                           |                             |                        |             |        |       |

<a href="#export_list"> Back to list </a>


<br>
<br>
<br>
<a name="t2_1"></a><hr /> <--!  °°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°° MAIN DATAMODEL°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°->
<br>
<br>
<br> 


#### D3_components_<i>OUTCOME</i>.RData

[Example]()

For each <I>OUTCOME</I>* in <I>TYPE</I>** and in HOSP and PC, during one year of lookback (YYYY-1) and during first study year (YYYY).

<table>
<thead>
<tr><th>Variable</th><th>Description</th><th>Vocabulary</th><th>Format</th><th>Notes</th></tr>
</thead>
<tbody>

<tr><td>person_id</td><td>	unique person identifier</td><td>	from cdm</td><td>	</td><td>	</td></tr>
<tr><td>study_entry_date</td><td>	date at which subject enters the study, based upon study period, observation periods, and inclusion criteria</td><td>	yyyymmdd</td><td>  	date</td><td>	</td></tr >
<tr><td><I>OUTCOME_TYPE</I>_HOSP_YYYY</td><td>	whether the person had <I>OUTCOME_TYPE</I> recorded during first study year</td><td>	0= no<br>
1= yes </td><td>	binary</td><td>	</td></tr >
<tr><td><I>OUTCOME_TYPE</I>_PC_YYYY</td><td>	whether the person had <I>OUTCOME_TYPE</I> recorded during first study year</td><td>	0= no<br>
1= yes </td><td>	binary</td><td>	</td></tr >
<tr><td><I>OUTCOME_TYPE</I>_HOSP_YYYY-1</td><td>	whether the person had <I>OUTCOME_TYPE</I> recorded during one year of lookback</td><td>	0= no<br>
1= yes </td><td>	binary</td><td>	</td></tr >
<tr><td><I>OUTCOME_TYPE</I>_PC_YYYY-1</td><td>	whether the person had <I>OUTCOME_TYPE</I> recorded during one year of lookback</td><td>	0= no<br>
1= yes </td><td>	binary</td><td>	</td></tr >


</tbody>
</table>
* <I>OUTCOME</I> may be equal to: ... <br>
** <I>TYPE</I> may be equal to: ...


<a href="#main_list"> Back to list </a> 


<br>
<br>
<br>
<a name="t2_2"></a><hr/>
<br>
<br>
<br> 


#### D3_events_ALL_OUTCOMES.RData

[Example]()

Unit of observation: each person_id for each different name_event

<table>
<thead>
<tr><th>Variable</th><th>Description</th><th>Vocabulary</th><th>Format</th><th>Notes</th></tr>
</thead>
<tbody>

<tr><td> person_id </td><td>	unique person identifier </td><td>	from cdm </td><td>	</td><td>	</td></tr>
<tr><td> name_event </td><td>	Name of the event experienced </td><td>	</td><td>	string </td><td>	</td></tr>
<tr><td> date_event </td><td>	date at which the subject experiences the event </td><td>	 yyyy-mm-dd  </td><td>	date </td><td>	</td></tr>

</tbody>
</table>

<a href="#main_list"> Back to list </a> 


<br>
<br>
<br>
<a name="t2_3"></a><hr />
<br>
<br>
<br>





#### D3_selection_criteria.RData

[Example]()

Unit of observation: all PERSONS

<table>
<thead>
<tr><th>Variable</th><th>Description</th><th>Vocabulary</th><th>Format</th><th>Notes</th></tr>
</thead>
<tbody>

<tr><td>person_id</td><td>	unique person identifier</td><td>	from cdm</td><td>	</td><td>	</td></tr >
<tr><td>sex</td><td>	sex at instance creation</td><td>	from cdm</td><td>	</td><td>	</td></tr >
<tr><td>date_of_birth</td><td>	date of birth</td><td>	yyyymmdd</td><td>	date</td><td>	</td></tr >
<tr><td>date_of_death</td><td>	date of death</td><td>	yyyymmdd</td><td>	date</td><td>	</td></tr >
<tr><td>study_entry_date</td><td>	date at which subject enters the study, based upon study period, observation periods, and inclusion criteria</td><td>	yyyymmdd</td><td>	date</td><td>	</td></tr >
<tr><td>study_exit_date</td><td>	date at which subject exits the study, based upon study period, observation periods, and inclusion criteria</td><td>	yyyymmdd</td><td>	date</td><td>	</td></tr >
<tr><td>age_at_study_entry</td><td>	age at study_entry_date</td><td>	</td><td>	integer</td><td>	</td></tr >
<tr><td>sex_or_birth_date_missing</td><td>	sex or birth date mssing</td><td>	0 = to be included<br>
1= to be excluded</td><td>	integer</td><td>	</td></tr >
<tr><td>birth_date_absurd       </td><td>              
	quality check: birth date absurd</td><td>	0=no<br>
1=yes</td><td>	Binary</td><td>	</td></tr >
<tr><td>not_female</td><td>	person is not female</td><td>	0=no<br>
1=yes</td><td>	binary</td><td>	</td></tr >
<tr><td>not_in_fertile_age_at_study_entry_date</td><td>	person who had age less than 12 or higher than 55</td><td>	0=no<br>
1=yes</td><td>	binary</td><td>	</td></tr >
<tr><td>insufficient_run_in         </td><td>          
	person had insufficient look back period</td><td>	0=no<br>
1=yes</td><td>	binary</td><td>	</td></tr >
<tr><td>observed_time_no_overlap </td><td>            
	the observed time of the person did not overlap the study period</td><td>	0=no<br>
1=yes</td><td>	binary</td><td>	</td></tr >
<tr><td>no_op_start_date          </td><td>        	quality check: no observation period start date recorded</td><td>	0=no<br>
1=yes</td><td>	binary</td><td>	</td></tr >
<tr><td>death_before_study_entry </td><td>           	person died before study entry</td><td>	0=no<br>
1=yes</td><td>	binary</td><td>	</td></tr >


</tbody>
</table>

<a href="#main_list"> Back to list </a> 


<br>
<br>
<br>
<a name="t2_4"></a><hr />
<br>
<br>
<br>





#### D3_study_population_covariates.RData

[Example]()

Unit of observation: persons in the study population <br>
Observations: once <br>
Study variables: study entry date, covariates at baseline <br>

<table>
<thead>
<tr><th>Variable</th><th>Description</th><th>Vocabulary</th><th>Format</th><th>Notes</th></tr>
</thead>
<tbody>

<tr><td>person_id</td><td>	unique person identifier</td><td>	from cdm</td><td>	</td><td>	</td></tr >
<tr><td>study_entry_date</td><td>	date at which subject enters the study, based upon study period, observation periods, and inclusion criteria</td><td>	yyyymmdd  </td><td>	date</td><td>	</td></tr >
<tr><td><I>COVARIATE</I>_at_study_entry</td><td>	whether the person had <I>COVARIATE</I> recorded during one year of lookback</td><td>	0= no<br>
1= yes </td><td>	binary</td><td>	</td></tr >
</tbody>
</table>
**** <i>COVARIATE</I> in CV, COVCOPD, COVCKD, COVDIAB <br>

<a href="#main_list"> Back to list </a> 


<br>
<br>
<br>
<a name="t2_5"></a><hr />
<br>
<br>
<br>





#### D4_algorithm_comparison_<i>OUTCOMES</I>_intermediate.RData

[Example]()

<table>
<thead>
<tr><th>Variable</th><th>Description</th><th>Vocabulary</th><th>Format</th><th>Notes</th></tr>
</thead>
<tbody>

<tr><td>person_id</td><td>	unique person identifier</td><td>	from cdm</td><td>	</td><td>	</td></tr >
<tr><td>study_entry_date</td><td>	date at which subject enters the study, based upon study period, observation periods, and inclusion criteria</td><td>	yyyymmdd  </td><td>	date</td><td>	</td></tr >
<tr><td><I>OUTCOME_TYPE</I>_HOSP_YYYY</td><td>	whether the person had <I>OUTCOME_TYPE</I> recorded during first study year</td><td>	0= no
<br>1= yes </td><td>	binary</td><td>	</td></tr >
<tr><td><I>OUTCOME_TYPE</I>_PC_YYYY</td><td>	whether the person had <I>OUTCOME_TYPE</I> recorded during first study year</td><td>	0= no
<br>1= yes </td><td>	binary</td><td>	</td></tr >
<tr><td><I>OUTCOME_TYPE</I>_HOSP_YYYY-1</td><td>	whether the person had <I>OUTCOME_TYPE</I> recorded during one year of lookback</td><td>	0= no<br>
1= yes </td><td>	binary</td><td>	</td></tr >
<tr><td><I>OUTCOME_TYPE</I>_PC_YYYY-1</td><td>	whether the person had <I>OUTCOME_TYPE</I> recorded during one year of lookback</td><td>	0= no<br>
1= yes </td><td>	binary</td><td>	</td></tr >
<tr><td>todrop</td><td>	</td><td>	1= person to drop <br>
0= person to keep</td><td>	binary</td><td>	</td></tr >
<tr><td>alg<I>COMP</I></td><td>	1=  for those sucjects who had at least one <I>COMP</I> >0 in the previous year
0= otherwise</td><td>	0= no<br>
1= yes </td><td>	binary</td><td>	</td></tr >

</tbody>
</table> 
*****<I>COMP</I> may vary in values of Composites (i.e. “5: 1 OR 3”, “6: 1 OR 2”,..)

<a href="#main_list"> Back to list </a> 

<br>
<br>
<br>
<a name="t3_1"></a><hr />
<br>
<br>
<br>





#### D3_events_<i>OUTCOME_TYPE</i>.RData

[Example]()

For each <I>OUTCOME</I>* in <I>TYPE</I>** and in HOSP and PC, during one year of lookback (YYYY-1) and during first study year (YYYY)

<table>
<thead>
<tr><th>Variable</th><th>Description</th><th>Vocabulary</th><th>Format</th><th>Notes</th></tr>
</thead>
<tbody>

<tr><td>person_id</td><td>	unique person identifier</td><td>	from cdm</td><td>	string</td><td>	</td></tr >
<tr><td>date</td><td>	</td><td>	yyyymmdd</td><td>  	date</td><td>	</td></tr >
<tr><td>end_date_record</td><td>	</td><td>	yyyymmdd  </td><td>	date</td><td>	</td></tr >
<tr><td>codvar</td><td>	All the codes in the concept set</td><td>	from cdm</td><td>	string</td><td>	</td></tr >
<tr><td>event_record_vocabulary</td><td>	</td><td>	from cdm</td><td>	string</td><td>	</td></tr >
<tr><td>text_linked_to_event_code</td><td>	</td><td>	from cdm</td><td>	string</td><td>	</td></tr >
<tr><td>event_free_text</td><td>	</td><td>	from cdm</td><td>	string</td><td>	</td></tr >
<tr><td>present_on_admission</td><td>	</td><td>	from cdm</td><td>	string</td><td>	</td></tr >
<tr><td>meaning_of_event</td><td>	</td><td>	from cdm</td><td>	string</td><td>	</td></tr >
<tr><td>origin_of_event</td><td>	</td><td>	from cdm</td><td>	string</td><td>	</td></tr >
<tr><td>visit_occurrence_id </td><td> 	</td><td>	from cdm</td><td>	string</td><td>	</td></tr >
<tr><td>Col</td><td>	</td><td>	from cdm</td><td>	string</td><td>	</td></tr >
<tr><td>Table_cdm</td><td>	</td><td>	from cdm</td><td>	string</td><td>	</td></tr >
<tr><td>study_entry_date</td><td>	date at which subject enters the study, based upon study period, observation periods, and inclusion criteria</td><td>	yyyymmdd</td><td>	date</td><td>	</td></tr >
<tr><td><I>OUTCOME_TYPE</I>_HOSP_YYYY</td><td>	whether the person had <I>OUTCOME_TYPE</I> recorded during first study year</td><td>	0= no
<br>1= yes </td><td>	binary</td><td>	</td></tr >
<br><tr><td><I>OUTCOME_TYPE</I>_PC_YYYY</td><td>	whether the person had <I>OUTCOME_TYPE</I> recorded during first study year</td><td>	0= no<br>
1= yes </td><td>	binary</td><td>	</td></tr >
<tr><td><I>OUTCOME_TYPE</I>_HOSP_YYYY-1</td><td>	whether the person had <I>OUTCOME_TYPE</I> recorded during one year of lookback</td><td>	0= no<br>
1= yes </td><td>	binary</td><td>	</td></tr >
<tr><td><I>OUTCOME_TYPE</I>_PC_YYYY-1</td><td>	whether the person had <I>OUTCOME_TYPE</I> recorded during one year of lookback</td><td>	0= no<br>
1= yes </td><td>	binary</td><td>	</td></tr >

</tbody>
</table>

*<I>OUTCOME</I> may be equal to: ... <br>
** <I>TYPE</I> may be equal to: ...

<a href="#functional_list"> Back to list </a> 
<br>
<br>
<br>


<a name="t3_2"></a><hr />
<br>
<br>
<br>





#### D3_study_population_DP.RData

[Example]()

All <i>DP</i> variables at study entry of all PERSONS in study 
<table>
<thead>
<tr><th>Variable</th><th>Description</th><th>Vocabulary</th><th>Format</th><th>Notes</th></tr>
</thead>
<tbody>

<tr><td>person_id</td><td>	unique person identifier</td><td>	from cdm</td><td>	</td><td>	</td></tr >
<tr><td>study_entry_date</td><td>	date at which subject enters the study, based upon study period, observation periods, and inclusion criteria</td><td>	yyyymmdd  </td><td>	date</td><td>	</td></tr >
<tr><td><i>DP</i>_at_study_entry</td><td>	whether the person had xxx recorded during one year of lookback</td><td>	0=no<br>
1=yes </td><td>	binary</td><td>	</td></tr >


</tbody>
</table>

*** <i>DP</i> in DRUGS_conceptsets may be: ... <br>
<a href="#functional_list"> Back to list </a> 
<br>
<br>
<br>
