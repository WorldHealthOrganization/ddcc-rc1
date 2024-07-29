Instance:     DDCCPatientArabic
InstanceOf:   DDCCPatient
Usage:        #example
// Title: ""
// Description: ""
* name[ddccName].text = "أولوس أجيريوس"
* name[ddccName].use = #official
* birthDate = "2003-03-03"


Instance: DDCCOrganizationArabic
InstanceOf: DDCCOrganization
Usage: #example
// Title: ""
// Description: ""
* name = "مستشفى حكومي"

Instance: DDCCImmunizationRecommendationArabic
InstanceOf: DDCCImmunizationRecommendation
Usage: #example
// Title: ""
// Description: ""
* date = "2021-05-06"
* patient = Reference(DDCCPatientArabic)
* recommendation.vaccineCode.coding[ddccVaccine] = $ICD11#XM0CX4
* recommendation.dateCriterion.value = "2021-05-20"
* recommendation.dateCriterion.code = http://loinc.org#30980-7
* recommendation.forecastStatus = http://terminology.hl7.org/CodeSystem/immunization-recommendation-status#due
* recommendation.supportingImmunization = Reference(DDCCImmunizationArabic)

Instance: DDCCImmunizationArabic
InstanceOf: DDCCImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
* extension[vaccineBrand].valueCoding = $ICD11#XM1G90
* extension[vaccineMarketAuthorization].valueCoding = DDCCExampleTestCodeSystem#TEST
* extension[validFrom].valueDate = "2021-05-30"
* extension[country].valueCode = urn:iso:std:iso:3166#SAU
* vaccineCode = $ICD11#XM0CX4
* expirationDate = "2021-06-30"
* lotNumber = "123"
* patient = Reference(DDCCPatientArabic)
* location.display = "موقع التطعيم"
* occurrenceDateTime =  "2021-05-06"
* performer.actor = Reference(DDCCOrganizationArabic)
* protocolApplied[protocolAppliedAuthority].authority = Reference(DDCCOrganizationArabic)
* protocolApplied[protocolAppliedAuthority].targetDisease = $ICD11#RA01
* protocolApplied[protocolAppliedAuthority].doseNumberPositiveInt = 1
* protocolApplied[protocolAppliedAuthority].seriesDosesPositiveInt = 2


Instance:     DDCCCompositionExampleArabic
InstanceOf:   DDCCVSComposition
Usage: #example
* identifier[+].system = "urn:EXAMPLE-who-:ddcc:composition:ids"
* identifier[=].value = "999123456123456123456"
* identifier[=].use = #official
* status = #final
* subject = Reference(DDCCPatientArabic)
* date = "2020-05-06"
* author = Reference(DDCCOrganizationArabic)
* attester.party = Reference(DDCCOrganizationArabic)
* section[vaccination].code = $LOINC#11369-6
* section[vaccination].focus = Reference(DDCCImmunizationArabic)
* section[vaccination].entry[+] = Reference(DDCCImmunizationArabic)
* section[vaccination].entry[+] = Reference(DDCCImmunizationRecommendationArabic)



Instance: ExampleArabic
InstanceOf: DDCCVSDocument
Usage: #example

* type = #document
* timestamp = "2021-06-03T13:28:17-05:00"
* identifier[+].system = "urn:EXAMPLE-who-:ddcc:bundle:ids"
* identifier[=].value = "9990123012301230123"

* link[+].relation = "publication"
* link[=].url = "urn:HCID:1234567890"

* entry[ddccComposition].fullUrl = "http://www.example.org/fhir/Composition/DDCCCompositionExampleArabic"
* entry[ddccComposition].resource = DDCCCompositionExampleArabic

* entry[ddccPatient].fullUrl = "http://www.example.org/fhir/Patient/DDCCPatientArabic"
* entry[ddccPatient].resource = DDCCPatientArabic

* entry[ddccOrganization].fullUrl = "http://www.example.org/fhir/Organization/DDCCOrganizationArabic"
* entry[ddccOrganization].resource = DDCCOrganizationArabic

* entry[ddccImmunization].fullUrl = "http://www.example.org/fhir/Immunization/DDCCImmunizationArabic"
* entry[ddccImmunization].resource = DDCCImmunizationArabic

* entry[ddccImmunizationRecommendation].fullUrl = "http://www.example.org/fhir/ImmunizationRecommendation/DDCCImmunizationRecommendationArabic"
* entry[ddccImmunizationRecommendation].resource = DDCCImmunizationRecommendationArabic


Instance:     DDCCVSQuestionnaireResponseArabic
InstanceOf:   DDCCQuestionnaireResponse
Usage:        #example

* questionnaire = $DDCCVSQuestionnaireURL
* status = #completed

* subject = Reference(DDCCPatientArabic)
* authored = "2021-04-01"

* item[+].linkId = "name"
* item[=].answer.valueString = "أولوس أجيريوس"

* item[+].linkId = "birthDate"
* item[=].answer.valueDate = "2003-03-03"

* item[+].linkId = "identifier"
* item[=].answer.valueString = "12345678905"

* item[+].linkId = "sex"
* item[=].answer.valueCoding = http://hl7.org/fhir/administrative-gender#male

* item[+].linkId = "vaccine"
* item[=].answer.valueCoding = $ICD11#XM1NL1

* item[+].linkId = "brand"
* item[=].answer.valueCoding = $ICD11#XM1G90

* item[+].linkId = "manufacturer"
* item[=].answer.valueCoding = DDCCExampleTestCodeSystem#TEST

* item[+].linkId = "ma_holder"
* item[=].answer.valueCoding = DDCCExampleTestCodeSystem#TEST

* item[+].linkId = "lot"
* item[=].answer.valueString = "ER8732"

* item[+].linkId = "date"
* item[=].answer.valueDate = "2021-04-05"

* item[+].linkId = "vaccine_valid"
* item[=].answer.valueDate = "2021-04-19"

* item[+].linkId = "dose"
* item[=].answer.valueInteger = 1

* item[+].linkId = "total_doses"
* item[=].answer.valueInteger = 2

* item[+].linkId = "country"
* item[=].answer.valueCoding = urn:iso:std:iso:3166#SAU

* item[+].linkId = "centre"
* item[=].answer.valueString = "موقع التطعيم"

* item[+].linkId = "hw"
* item[=].answer.valueString = "lAH8TnzqAInqwkslHzOlSA"

* item[+].linkId = "disease"
* item[=].answer.valueCoding = $ICD11#RA01

* item[+].linkId = "due_date"
* item[=].answer.valueDate = "2021-04-28"

* item[+].linkId = "pha"
* item[=].answer.valueString = "dPD2PfwzBQyphcjeUiAdRP"

* item[+].linkId = "hcid"
* item[=].answer.valueString = "bMlJkAt0V92RYhhG3fNt5"

* item[+].linkId = "valid_from"
* item[=].answer.valueDate = "2021-04-05"

* item[+].linkId = "valid_until"
* item[=].answer.valueDate = "2022-04-05"


Instance:     DDCCVSTXSHEParametersArabic
InstanceOf:   DDCCGenerateHealthCertificateParameters
Usage:        #inline

* parameter[ddccResponse].name = "response"
* parameter[ddccResponse].resource = DDCCVSQuestionnaireResponseArabic


Instance:     DDCCTXSHEbundleexampleArabic
InstanceOf:   DDCCSubmitHealthEventRequest
Usage:        #example

* type = #batch
* entry[ddccParameters].fullUrl = "http://www.example.org/fhir/Parameters/DDCCVSTXSHEParametersArabic"
* entry[ddccParameters].resource = DDCCVSTXSHEParametersArabic
* entry[ddccParameters].request.method = #POST
* entry[ddccParameters].request.url = "QuestionnaireResponse/$generateHealthCertificate"
