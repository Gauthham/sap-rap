@AbapCatalog.sqlViewName: 'Z_DDL_CUST_CDS'
@EndUserText.label: 'Customer BO CDS view'

define view ZI_RAP_CUSTOMER_CDS 
as select from /DMO/I_Customer

association [1..* ] to ZI_RAP_TRAVEL_CDS as _Travel on $projection.CustomerID = _Travel.CustomerID
{

@UI.lineItem: [{ position: 10 }]
    key CustomerID,
    FirstName,
    LastName,
    Title,
    Street,
    PostalCode,
    City,
    CountryCode,
    PhoneNumber,
    EMailAddress,
    /* Associations */
    _Country,
    _Travel
}
