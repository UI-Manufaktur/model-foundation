module models.foundation.crm.facility_equipment;

@safe:
import models.foundation;

// Resource that can be scheduled.
class DFacilityEquipmentEntity : DOOPEntity {
  mixin(EntityThis!("FacilityEquipmentEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        "equipmentId": StringAttribute, // Unique identifier of the facility/equipment."]),
        "createdOnBehalfBy": StringAttribute, // Unique identifier of the delegate user who created the equipment."]),
        "modifiedOnBehalfBy": StringAttribute, // Unique identifier of the delegate user who last modified the equipment."]),
        "businessUnitId": BusinessUnitIdAttribute, // Business Unit Id"]),
        "importSequenceNumber": NumberAttribute, // Sequence number of the import that created this record."]),
        "overriddenCreatedOn": StringAttribute, // Date and time that the record was migrated."]),
        "timeZoneRuleVersionNumber": NumberAttribute, // For internal use only."]),
        "utcConversionTimeZoneCode": StringAttribute, // Time zone code that was in use when the record was created."]),
        "calendarId": StringAttribute, // Fiscal calendar associated with the facility/equipment."]),
        "displayInServiceViews": StringAttribute, // For internal use only."]),
        "emailAddress": StringAttribute, // Email address of person to contact about the use of the facility/equipment."]),
        "isDisabled": BooleanAttribute, // Whether the facility/equipment is disabled or operational."]),
        "organizationId": StringAttribute, // Unique identifier of the parent business unit."]),
        "siteId": StringAttribute, // Site where the facility/equipment is located."]),
        "skills": StringAttribute, // Skills needed to operate the facility/equipment."]),
        "timeZoneCode": StringAttribute, // Local time zone where the facility/equipment is located."]),
        "exchangeRate": StringAttribute, // Exchange rate for the currency associated with the equipment with respect to the base currency."]),
        "transactionCurrencyId": StringAttribute, // Unique identifier of the currency associated with the equipment."]),
      ])
      .registerPath("foundation_facility.equipments");
  }
}
mixin(EntityCalls!("FacilityEquipmentEntity"));

unittest {
  version(test_model_foundation) {
    
    assert(FacilityEquipmentEntity);

  auto entity = FacilityEquipmentEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}