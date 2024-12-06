INTERFACE zif_aff_edot_v1
PUBLIC.
 
TYPES:
"! <p class="shorttext">eDocument Type</p>
"! Specify eDocument types
BEGIN OF ty_edoc_type,
  "! <p class="shorttext">eDocument Type</p>
  "! eDocument Type
  edoc_type TYPE c LENGTH 10,
END OF ty_edoc_type.
"! <p class="shorttext">eDocument Type</p>
"! Specify eDocument types
TYPES ty_edoc_types  TYPE SORTED TABLE OF ty_edoc_type WITH UNIQUE KEY edoc_type.
 
  "! <p class="shorttext">Description</p>
  "! Description
  TYPES ty_short_description TYPE c LENGTH 30.
  TYPES:
  "! <p class="shorttext">SRAL Configuration Type</p>
  "! eDocument SRAL Configuration type
  BEGIN OF ty_sral_configuration,
    "! <p class="shorttext">File Type</p>
    "! File Type
    "! $required
    file_type                TYPE c LENGTH 10,
    "! <p class="shorttext">File Structure Type</p>
    "! File Structure type
    "! $required
    file_structure_type TYPE c LENGTH 30,
    "! <p class="shorttext">File Description</p>
    "! File Description type
    file_description_type TYPE c LENGTH 60,
    "! <p class="shorttext">File Cloud Relevancy</p>
    "! File Cloud Relevancy type
    not_cloud_relevant_type TYPE c LENGTH 1,
  END OF ty_sral_configuration.
  "! <p class="shorttext">SRAL Configuration Types</p>
  "! SRAL Configuration types
  TYPES ty_sral_configurations TYPE SORTED TABLE OF ty_sral_configuration WITH UNIQUE KEY file_type.
 
  TYPES:
  "! <p class="shorttext">eDocument Type</p>
  "! eDocument Type
  BEGIN OF ty_main,
    "! $required
    format_version              TYPE zif_aff_types_v1=>ty_format_version,
    "! <p class="shorttext">Header</p>
    "! Header
    "! $required
    header                      TYPE zif_aff_types_v1=>ty_header_60_cloud,
    "! <p class="shorttext">eDocument Type</p>
    "! eDoc Type
    "! $required
    edocument_type                    TYPE ty_edoc_type,
    "! <p class="shorttext">Contingency</p>
    "! Contingency
    contingency TYPE c LENGTH 1,
    "! <p class="shorttext">Contingency Type</p>
    "! Contingency Type
    contingency_type TYPE c LENGTH 10,    
    "! <p class="shorttext">Table Name</p>
    "! Table name
    table_name TYPE zif_aff_types_v1=>ty_object_name_30,
    "! <p class="shorttext">Archive Prep Req</p>
    "! Archive Prep Req Type
    archive_prep_req_type TYPE c LENGTH 1,
    "! <p class="shorttext">Additional Selection Fields</p>
    "! Additional selection fields of validation report
    edocument_sral_configurations TYPE ty_sral_configurations,
    "! <p class="shorttext">Tax Authority Message Types</p>
    "! Tax authority message types
    tax_authority_messages      TYPE ty_messages,
    "! <p class="shorttext">Additional Tax Authority Tables</p>
    "! Additional tax authority tables
    tax_authority_tables        TYPE ty_tax_authority_tables,
    "! <p class="shorttext">Comparison Types</p>
    "! Define comparison types
    "! $required
    comparison_types            TYPE ty_comparison_types,
    "! <p class="shorttext">Events Assignment</p>
    "! Assign events to consistency scenario
    events                      TYPE ty_events,
    "! <p class="shorttext">Representation Types</p>
    "! Assign representation types associated with consistency scenario
    "! $required
    relationship_attribute      TYPE ty_relationship_attributes,
    "! <p class="shorttext">eDocument Type Assignment</p>
    "! Assign eDocument types associated with consistency scenario
    edocument_types             TYPE ty_edoc_types,
    "! <p class="shorttext">Inconsistency Categories</p>
    "! Inconsistency categories
    "! $required
    inconsistency_categories    TYPE ty_inconsistency_categories,
  END OF ty_main.
 
ENDINTERFACE.