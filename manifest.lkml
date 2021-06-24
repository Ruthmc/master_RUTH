project_name: "reporting_master"

# # Use local_dependency: To enable referencing of another project
# # on this instance with include: statements
#
# local_dependency: {
#   project: "name_of_other_project"
# }

#########################################################################################################################################################################################
# CONSTANTS - View labels ---------------------------------------------------------------------------------------------------------------------------------------------------------------
#########################################################################################################################################################################################

# The following constants contain the name and emoji of the dividers used to seperate columns in explores.
# They are provided in the manifest to:
#                                       - keep the way dividers are shown across explores standardised.
#                                       - allow easy maintainance and updating of the view label's value

constant: view_label__order {
  value: " 🧾 Order"
  export: none
}

constant: view_label__platform {
  value: "📱 Platform"
  export: none
}

constant: view_label__production {
  value: "🏭 Production"
  export: none
}

constant: view_label__delivery {
  value: "🚚 Delivery"
  export: none
}

constant: view_label__basket_product {
  value: "📚 Basket Product"
  export: none
}

constant: view_label__user_type {
  value: "👫 User Type"
  export: none
}

constant: view_label__locale {
  value: "🌍 Locale"
  export: none
}

constant: view_label__offer {
  value: "％ Offer"
  export: none
}

constant: view_label__brand {
  value: "📷 Brand"
  export: none
}

#########################################################################################################################################################################################
# CONSTANTS - Group labels --------------------------------------------------------------------------------------------------------------------------------------------------------------
#########################################################################################################################################################################################

# The following constants contain the group labels used as a secondary grouping of columns within explores.

# Labels have a hierachy. The hierachy is as follows: 'View Label' -> 'Group Label' -> 'Label'.
# Therefore, in accordance with the hierachy above, all group labels have a "parent" view label
#
#       For example:
#                      View Label parent = "👫 User Type"
#                         Group Label child =  "Member"
#                         Group Label child = "Customer"
#
# In order to help understand which view label is the parent, group labels are named with the following convention:
#
#     [CONSTANT TYPE]__[CHILD NAME]__[PARENT TYPE]__[PARENT NAME]
#
# So, the group label 'Member' from the example above would be named: [group_label]__[member]__[parent_label]__[user_type]


# BASKET PRODUCT

constant: group_label__product_hierachy__view_label__basket_product {
  value: " Product Hierachy"
  export: none
}

# PLATFORM

constant: group_label__app__view_label__platform {
  value: "App"
  export: none
}

constant: group_label__browser__view_label__platform {
  value: "Browser"
  export: none
}

constant: group_label__device__view_label__platform {
  value: "Device"
  export: none
}

constant: group_label__os__view_label__platform {
  value: "OS"
  export: none
}

constant: group_label__platform__view_label__platform {
  value: "Platform"
  export: none
}

# USER TYPE

constant: group_label__customer__view_label__user_type {
  value: "Customer"
  export: none
}

constant: group_label__member__view_label__user_type {
  value: "Member"
  export: none
}

# MASTER CALENDAR

constant: group_label__calendar_dates__view_label__dim_date {
  value: "Calendar Dates"
  export: none
}

constant: group_label__period_on_period__view_label__dim_date {
  value: "Period on Period"
  export: none
}

constant: group_label__dynamic_timeframes__view_label__dim_date {
  value: "Dynamic Timeframes"
  export: none
}

constant: group_label__financial_dates__view_label__dim_date {
  value: "Financial Dates"
  export: none
}

constant: group_label__yes_no_filters__view_label__dim_date {
  value: "Yes/No filters"
  export: none
}

constant: group_label__peak_filters__view_label__dim_date {
  value: "Peak filters"
  export: none
}

constant: group_label__peak_names__view_label__dim_date {
  value: "Peak names"
  export: none
}

constant: group_label__public_holiday_filters__view_label__dim_date {
  value: "Public Holiday filters"
  export: none
}

constant: group_label__public_holiday_names__view_label__dim_date {
  value: "Public Holiday names"
  export: none
}

constant: group_label__legacy__view_label__dim_date {
  value: "z Legacy"
  export: none
}










#########################################################################################################################################################################################
# CONSTANTS - Descriptions --------------------------------------------------------------------------------------------------------------------------------------------------------------
#########################################################################################################################################################################################

# constant: description__dim_date__calendar_date {
#   value: ""
#   export: none
# }


constant: description__dim_basket_product__basket_id {  value: "DEPRECATED, retained to prevent code breakages - use BASKET_PRODUCT_ID instead"  export: none}
constant: description__dim_basket_product__basket_product_category {  value: "The product category from the basket system, based on the 'range' category type."  export: none}
constant: description__dim_basket_product__basket_product_channel_id {  value: "The channel that is associated with this product's prices"  export: none}
constant: description__dim_basket_product__basket_product_id {  value: "The internal product ID assigned to the product by the basket system, e.g. 36376"  export: none}
constant: description__dim_basket_product__basket_product_name {  value: "The name of the product (where possible, in english)"  export: none}
constant: description__dim_basket_product__basket_product_pk {  value: "The PK for the Basket Product table, based on the ID used by the basket system (typically Babel)"  export: none}
constant: description__dim_basket_product__basket_product_sku {  value: "The SKU assigned to the product by the basket system, e.g. '7251'"  export: none}
constant: description__dim_basket_product__basket_sku {  value: "DEPRECATED, retained to prevent code breakages - use BASKET_PRODUCT_SKU instead"  export: none}
constant: description__dim_basket_product__basket_system {  value: "The basket system from which the product's master data is taken."  export: none}
constant: description__dim_basket_product__is_visible {  value: "True if this product is visible to customers."  export: none}
constant: description__dim_basket_product__master_data_created_utc {  value: "The datetime on which the product was created in the source system, in UTC time"  export: none}
constant: description__dim_basket_product__master_data_last_updated_utc {  value: "The datetime on which the product was last modified in the source system, in UTC time"  export: none}
constant: description__dim_basket_product__product_pig {  value: "PIG (Print, Indigo, Goodies)"  export: none}
constant: description__dim_basket_product__product_type {  value: "The value used by the system to distinguish between different types of product."  export: none}
constant: description__dim_basket_product__production_team {  value: "The production team responsible for producing the product. This is used in the calculation of leadtimes."  export: none}
constant: description__dim_basket_product__production_team_id {  value: "The ID of the production team responsible for producing the product. This is displayed in some interfaces so is included to allow easier correlation across systems"  export: none}
constant: description__dim_basket_product__s1 {  value: "The name for the S1 level hierarchy node, based on the Babel BI product categories."  export: none}
constant: description__dim_basket_product__s1_id {  value: "The ID for the S1 level hierarchy node, based on the Babel BI product categories."  export: none}
constant: description__dim_basket_product__s2 {  value: "The name for the S2 level hierarchy node, based on the Babel BI product categories."  export: none}
constant: description__dim_basket_product__s2_id {  value: "The ID for the S2 level hierarchy node, based on the Babel BI product categories."  export: none}
constant: description__dim_basket_product__s3 {  value: "The name for the S3 level hierarchy node, based on the Babel BI product categories."  export: none}
constant: description__dim_basket_product__s3_id {  value: "The ID for the S3 level hierarchy node, based on the Babel BI product categories."  export: none}
constant: description__dim_basket_product__s4 {  value: "The name for the S4s level hierarchy node, based on the Babel BI product categories."  export: none}
constant: description__dim_basket_product__s4_id {  value: "The ID for the S4 level hierarchy node, based on the Babel BI product categories."  export: none}
constant: description__dim_brand__brand {  value: "The Photobox brand, as recorded in Babel. This is a lowercase identifier that covers the primary brand as well as a few niche identifiers. Some data quality rules are applied to the raw data to map to a valid brand where possible. If brand data is missing, this will be 'n/a'; if no matching brand can be identified, the brand will be 'unknown'."  export: none}
constant: description__dim_brand__brand_code {  value: "The raw BRAND value from the data, if provided"  export: none}
constant: description__dim_brand__brand_pk {  value: "The primary key for the table, based on the supplied brand identifier."  export: none}
constant: description__dim_brand__brand_raw {  value: "The raw BRAND value from the data, if provided"  export: none}
constant: description__dim_brand__is_valid_brand {  value: "True when BRAND_RAW is an exact match to one of the whitelisted BRAND values, else FALSE"  export: none}
constant: description__dim_browser__browser_name {  value: "The name of the browser being used, e.g. 'Chrome' or 'Facebook App'"  export: none}
constant: description__dim_browser__browser_pk {  value: "Primary key for the DIM_BROWSER table, based on the DBT key function for the attributes"  export: none}
constant: description__dim_browser__engine {  value: "The engine used by the browser, e.g. 'WebKit/Blink'"  export: none}
constant: description__dim_browser__version {  value: "The full version number of the browser being used, e.g. '77.0.3865.90'"  export: none}
constant: description__dim_browser__version_major {  value: "The major version number of the browser being used, e.g. '77'"  export: none}
constant: description__dim_channel__brand {  value: "The Brand the channel is associated with in Babel. Note that this is not guaranteed to be canonical, DIM_BRAND and the relevant DIM_BRAND_SK should be used where available."  export: none}
constant: description__dim_channel__business_unit {  value: "n/a"  export: none}
constant: description__dim_channel__channel_id {  value: "The numeric ID of the channel"  export: none}
constant: description__dim_channel__channel_name {  value: "The Name of this channel"  export: none}
constant: description__dim_channel__channel_pk {  value: "Primary key for this dimension, based on the CHANNEL_ID"  export: none}
constant: description__dim_channel__country {  value: "Two-letter country code for the country associated with the channel"  export: none}
constant: description__dim_channel__legal_entity {  value: "The legal entity the channel is associated with."  export: none}
constant: description__dim_channel__marketing_subtype {  value: "n/a"  export: none}
constant: description__dim_channel__parent_website {  value: "n/a"  export: none}
constant: description__dim_channel__source {  value: "The system that the channel information is taken from."  export: none}
constant: description__dim_currency_type__currency_type_desc {  value: "A description of how the currency is used, e.g. for tooltips in reporting"  export: none}
constant: description__dim_currency_type__currency_type_label {  value: "The label for the Currency type. Lower-case for consistency, e.g 'business unit'"  export: none}
constant: description__dim_currency_type__currency_type_name {  value: "Name of the Currency Type. Title case, e.g. 'Business Unit Currency'."  export: none}
constant: description__dim_currency_type__currency_type_pk {  value: "PK for the Currency Type table"  export: none}
constant: description__dim_customer__brand {  value: "The brand used to calculate the PK. A key identifier for Customers."  export: none}
constant: description__dim_customer__dim_customer_pk {  value: "Primary key for the Customer dimension, based on the SHA-256 hash of the customer's email address and the brand"  export: none}
constant: description__dim_customer__email_hash {  value: "The hash of the email provided by the user, used to calculate the primary key."  export: none}
constant: description__dim_customer__first_contact_datetime_utc {  value: "The earliest appearance of the customer in a data set available for analytics. Often corresponds to account creation."  export: none}
constant: description__dim_customer__first_contact_event_id {  value: "The event ID of the first contact record"  export: none}
constant: description__dim_customer__first_contact_source {  value: "The NDP data source that the first contact record was found in"  export: none}
constant: description__dim_customer__internal_email_domain {  value: "If the email is associated with a photobox, hofmann, or posterxxl email address, this field will contain the corresponding brand code, otherwise it will be NULL"  export: none}
constant: description__dim_customer__last_observed_full_member_event_id {  value: "The event ID of the last observed non-guest member record"  export: none}
constant: description__dim_customer__last_observed_full_member_id {  value: "The last non-guest Member Id that the customer was last associated with"  export: none}
constant: description__dim_customer__last_observed_full_member_source {  value: "The NDP data source that the last non-guest member ID associated with the customer was found in"  export: none}
constant: description__dim_customer__last_observed_member_event_id {  value: "The event ID of the last observed member record"  export: none}
constant: description__dim_customer__last_observed_member_id {  value: "The Member Id that the customer was last associated with"  export: none}
constant: description__dim_customer__last_observed_member_source {  value: "The NDP data source that the last member ID associated with the customer was found in"  export: none}
constant: description__dim_customer__lower_email_hash {  value: "Where available, the SHA-256 hash of the email address converted to lower-case."  export: none}
constant: description__dim_customer__lower_email_hash_pk {  value: "Alternate 'primary' key based on the SHA-256 hash of the customer's email address in lower case, and the brand"  export: none}
constant: description__dim_line_item_type__line_item_type_description {  value: "The description of the line item type"  export: none}
constant: description__dim_line_item_type__line_item_type_id {  value: "The identifier for the line item type for an order line item. Typically 'dry sale', 'delivery' or 'credit sale'."  export: none}
constant: description__dim_line_item_type__line_item_type_pk {  value: "Primary key for the line item type"  export: none}
constant: description__dim_member__brand {  value: "the brand this membership applies to"  export: none}
constant: description__dim_member__dim_customer_sk {  value: "Surrogate Key linking to the customer dimension based on this member's current Customer record. The customer associated with this member is linked from DIM_CUSTOMER_SK. Note that (based on the photobox definition of a customer being identified by their email address and brand), a customer can have multiple member IDs, and that a member's customer entity will change if they update their email address."  export: none}
constant: description__dim_member__email_hash {  value: "the hash of the member's current registered email address"  export: none}
constant: description__dim_member__first_order_timestamp_utc {  value: "The date and time of the member's first order, based on the available data in the new data platform (currently approximately nine years of history data are available)"  export: none}
constant: description__dim_member__group_channel_key {  value: "The channel associated with this member account"  export: none}
constant: description__dim_member__is_anonymous_user {  value: "true for the anonymous user static data row, otherwise false"  export: none}
constant: description__dim_member__is_customer {  value: "true if this Member has ever placed any order, otherwise false."  export: none}
constant: description__dim_member__is_guest {  value: "false if this is a full member account (or for the anonymous static member), else true if it is a guest member account."  export: none}
constant: description__dim_member__is_opted_into_marketing {  value: "Whether the user has opted into receiving marketing communications.The definition of the field in Babel docs is â€œMaximum number of news emails that the member wishes to receive per month.Takes 0, 1 or 2 as values: 0 ... no subscription 1 ... subscribed to receive newsletter/partners' offers 2 ... subscribed to receive newsletter twice a month"  export: none}
constant: description__dim_member__latest_guest_member_id {  value: "The guest account most recently associated with the same email (hash) value."  export: none}
constant: description__dim_member__lower_email_hash {  value: "the hash of the member's current registered email address in lower case. In future this will be used to provide additional activity matching capabilities."  export: none}
constant: description__dim_member__member_country {  value: "The ISO 3166 2-letter code of the country that the member record is associated with, according to their Babel database records"  export: none}
constant: description__dim_member__member_currency {  value: "The ISO 4217 alphabetic code of the currency associated with the member records in Babel"  export: none}
constant: description__dim_member__member_id {  value: "The Babel MemberID for this member"  export: none}
constant: description__dim_member__member_id_hash {  value: "The SHA-256 hash of the numeric value of the member ID (or of the MEMBER_ID Unicode string if MEMBER_ID_NUMBER is null)"  export: none}
constant: description__dim_member__member_id_number {  value: "The numeric value of the Member ID for this member, or NULL if the member ID is not numeric (NB babel member IDs should be numeric)"  export: none}
constant: description__dim_member__member_pk {  value: "Primary key for the DIM_MEMBER table"  export: none}
constant: description__dim_member__registration_timestamp_utc {  value: "The date and time at which the member was registered (based on the time that the member's Babel record was created). For members where WAS_GUEST is TRUE, this is also the guest account conversion timestamp."  export: none}
constant: description__dim_member__was_guest {  value: "true if this account currently is, or ever was, a guest account, based on whether a guest account was created with the same email hash.Only reliable after FIXME date"  export: none}
constant: description__dim_order_header__analytics {  value: "Analytics"  export: none}
constant: description__dim_order_header__app {  value: "The app that placed the order (e.g. flagship, pfp, web)"  export: none}
constant: description__dim_order_header__app_version {  value: "The version of the app that placed the order"  export: none}
constant: description__dim_order_header__cancelled_status_timestamp_utc {  value: "The latest time an order status of 'cancelled' was applied to the order. NULL if this status has not (yet) been applied to the order."  export: none}
constant: description__dim_order_header__cooling_status_timestamp_utc {  value: "The latest time an order status of 'cooling' was applied to the order. NULL if this status has not (yet) been applied to the order."  export: none}
constant: description__dim_order_header__customer_order_reference {  value: "External unique order reference provided to the customer"  export: none}
constant: description__dim_order_header__days_since_last_customer_order {  value: "The number of days since the last order by the same Customer (email/brand)"  export: none}
constant: description__dim_order_header__days_since_last_member_order {  value: "The number of days since the last order by the same MemberID"  export: none}
constant: description__dim_order_header__despatched_status_timestamp_utc {  value: "The latest time an order status of 'despatched' was applied to the order. NULL if this status has not (yet) been applied to the order."  export: none}
constant: description__dim_order_header__device {  value: "The device or browser type on which the order was placed (e.g. iOS, android, chrome)"  export: none}
constant: description__dim_order_header__device_version {  value: "The version of the device or browser on which the order was placed (e.g. pixel2, SE)"  export: none}
constant: description__dim_order_header__distinct_pig_count {  value: "The number of distinct PIGs on the products in the order. Order where all products are the same PIG will have this value = 1. Orders with no products (e.g. product credit purchases) will have the value 0."  export: none}
constant: description__dim_order_header__distinct_product_count {  value: "The number of distinct Babel Product IDs on the products in the order. Order where all products are the same will have this value = 1. Orders with no products (e.g. product credit purchases) will have the value 0."  export: none}
constant: description__dim_order_header__distinct_s1_count {  value: "The number of distinct S1 IDs on the products in the order. Order where all products are the same S1 will have this value = 1. Orders with no products (e.g. product credit purchases) will have the value 0."  export: none}
constant: description__dim_order_header__distinct_s2_count {  value: "The number of distinct S2 IDs on the products in the order. Order where all products are the same S2 will have this value = 1. Orders with no products (e.g. product credit purchases) will have the value 0."  export: none}
constant: description__dim_order_header__distinct_s3_count {  value: "The number of distinct S3 IDs on the products in the order. Order where all products are the same S3 will have this value = 1. Orders with no products (e.g. product credit purchases) will have the value 0."  export: none}
constant: description__dim_order_header__distinct_s4_count {  value: "The number of distinct S4 IDs on the products in the order. Order where all products are the same S4 will have this value = 1. Orders with no products (e.g. product credit purchases) will have the value 0."  export: none}
constant: description__dim_order_header__earliest_order_activity_timestamp_utc {  value: "The time the earliest event on the order was recorded"  export: none}
constant: description__dim_order_header__email_hash {  value: "DEPRECATED - will be moved to DIM_CUSTOMER soon. The hash of the email address associated with the order, or if not available, the email address associated with the member account"  export: none}
constant: description__dim_order_header__event_version {  value: "The version number of the Order Event"  export: none}
constant: description__dim_order_header__failed_status_timestamp_utc {  value: "The latest time an order status of 'failed' was applied to the order. NULL if this status has not (yet) been applied to the order."  export: none}
constant: description__dim_order_header__hold_status_timestamp_utc {  value: "The latest time an order status of 'hold' was applied to the order. NULL if this status has not (yet) been applied to the order."  export: none}
constant: description__dim_order_header__internal_customer_order_id {  value: "The Babel (or other order platform) order ID."  export: none}
constant: description__dim_order_header__is_2_in_5_order {  value: "true if this is the second (or subsequent) purchase by this customer within 5 weeks of their first order, otherwise false."  export: none}
constant: description__dim_order_header__is_desktop_app {  value: "True when the order was placed from a desktop app, otherwise False"  export: none}
constant: description__dim_order_header__is_first_order_flag {  value: "True if the order processing system indicates that this is the first order from this member, otherwise False.Note that this may not align 100% with NC/EC due to the different definitions implemented by the order processing platform."  export: none}
constant: description__dim_order_header__is_guest_flag {  value: "True when the order was placed from a guest member account, otherwise False"  export: none}
constant: description__dim_order_header__is_refund_order {  value: "True if the order contains a line item of type refund, otherwise false"  export: none}
constant: description__dim_order_header__is_single_parcel_order {  value: ""  export: none}
constant: description__dim_order_header__is_test_flag {  value: "True when the order is a test order, otherwise False"  export: none}
constant: description__dim_order_header__last_customer_order_timestamp_utc {  value: "The timestamp of the last order paid date for the same Customer (email/brand). null if this is the first order by this Customer."  export: none}
constant: description__dim_order_header__last_member_order_timestamp_utc {  value: "The timestamp of the last order paid date for the same MemberID. null if this is the first order by this MemberID."  export: none}
constant: description__dim_order_header__latest_order_activity_timestamp_utc {  value: "The time the most recent event on the order was recorded"  export: none}
constant: description__dim_order_header__member_id {  value: "DEPRECATED - will be moved to DIM_MEMBER soon. The MemberID associated with the Order"  export: none}
constant: description__dim_order_header__new_status_timestamp_utc {  value: "The latest time an order status of 'new' was applied to the order. NULL if this status has not (yet) been applied to the order."  export: none}
constant: description__dim_order_header__offer_hash_codes {  value: "Offer codes added at the checkout. NULL if no offer codes were used."  export: none}
constant: description__dim_order_header__order_basket_product_id {  value: "if all products on the order have the same basket ID, then that basket ID, otherwise 'multiple' (if multiple products) or 'none' (if no products on the order)"  export: none}
constant: description__dim_order_header__order_header_pk {  value: ""  export: none}
constant: description__dim_order_header__order_paid_timestamp_utc {  value: "The earliest time that an order reached a status of PROCESSING or later (based on the weighting defined in DIM_ORDER_STATUS)"  export: none}
constant: description__dim_order_header__order_pig {  value: "if all products on the order have the same PIG, then that PIG, otherwise 'multiple' (if multiple PIGs) or 'none' (if no products on the order)"  export: none}
constant: description__dim_order_header__order_s1 {  value: "if all products on the order have the same S1 (when the order record is last updated), then that S1, otherwise 'multiple' (if multiple S1s) or 'none' (if no products on the order)"  export: none}
constant: description__dim_order_header__order_s2 {  value: "if all products on the order have the same S2 (when the order record is last updated) then that S2, otherwise 'multiple' (if multiple S2s) or 'none' (if no products on the order)"  export: none}
constant: description__dim_order_header__order_s3 {  value: "if all products on the order have the same S3 (when the order record is last updated), then that S3, otherwise 'multiple' (if multiple S3s) or 'none' (if no products on the order)"  export: none}
constant: description__dim_order_header__order_s4 {  value: "if all products on the order have the same S4 (when the order record is last updated), then that S4, otherwise 'multiple' (if multiple S4s) or 'none' (if no products on the order)"  export: none}
constant: description__dim_order_header__order_status {  value: "The last received order status for the INTERNAL_ORDER_ID from Babel"  export: none}
constant: description__dim_order_header__os_version {  value: "The OS version of the device or browser on which the order was placed"  export: none}
constant: description__dim_order_header__packed_status_timestamp_utc {  value: "The latest time an order status of 'packed' was applied to the order. NULL if this status has not (yet) been applied to the order."  export: none}
constant: description__dim_order_header__partial_cancelled_status_timestamp_utc {  value: "The latest time an order status of 'partial cancelled' was applied to the order. NULL if this status has not (yet) been applied to the order."  export: none}
constant: description__dim_order_header__partial_status_timestamp_utc {  value: "The latest time an order status of 'partial' was applied to the order. NULL if this status has not (yet) been applied to the order."  export: none}
constant: description__dim_order_header__pending_status_timestamp_utc {  value: "The latest time an order status of 'pending' was applied to the order. NULL if this status has not (yet) been applied to the order. NULL if this status has not (yet) been applied to the order."  export: none}
constant: description__dim_order_header__printing_status_timestamp_utc {  value: "The latest time an order status of 'printing' was applied to the order. NULL if this status has not (yet) been applied to the order."  export: none}
constant: description__dim_order_header__processing_status_timestamp_utc {  value: "The latest time an order status of 'processing' was applied to the order. NULL if this status has not (yet) been applied to the order."  export: none}
constant: description__dim_order_header__refund_original_order {  value: "For refund orders: the INTERNAL_CUSTOMER_ORDER_ID to which this refund applies"  export: none}
constant: description__dim_order_header__special_offer_codes {  value: "Other offer codes on the order. NULL if no other offer codes were used."  export: none}
constant: description__dim_order_header__timestamps {  value: "Timestamps"  export: none}
constant: description__dim_order_header__unpaid_status_timestamp_utc {  value: "The latest time an order status of 'unpaid' was applied to the order. NULL if this status has not (yet) been applied to the order."  export: none}
constant: description__f_order__cash_credit_applied {  value: "The amount of credit used as payment (i.e. not product credit)Not available for events < v3.x.x"  export: none}
constant: description__f_order__cash_credit_type {  value: "'payment', 'monetary' or 'cash account'. See https://confluence.photobox.com/display/datastewardship/Credit for more details.Not available for events < v3.x.x"  export: none}
constant: description__f_order__current_price_credit_applied_excl_tax {  value: "The component of PRODUCT_CURRENT_PRICE_INCL_TAX that would have been paid by the Product Credits applied to the order, excluding taxNot available for events < v3.x.x"  export: none}
constant: description__f_order__current_price_credit_applied_incl_tax {  value: "The component of PRODUCT_CURRENT_PRICE_INCL_TAX that would have been paid by the Product Credits applied to the order, including taxNot available for events < v3.x.x"  export: none}
constant: description__f_order__delivery_discount_amount_excl_tax {  value: "The amount of the discount on delivery excluding tax"  export: none}
constant: description__f_order__delivery_discount_amount_incl_tax {  value: "The amount of the discount on delivery including tax"  export: none}
constant: description__f_order__delivery_discounted_price_excl_tax {  value: "The total delivery charge for the order after discounts are applied, excluding taxes"  export: none}
constant: description__f_order__delivery_discounted_price_incl_tax {  value: "The total delivery charge for the order after discounts are applied, including taxes"  export: none}
constant: description__f_order__delivery_price_excl_tax {  value: "The total delivery charge for the order, before discounts are applied, excluding tax"  export: none}
constant: description__f_order__delivery_price_incl_tax {  value: "The total delivery charge for the order, before discounts are applied, including tax"  export: none}
constant: description__f_order__dim_brand_sk {  value: "The surrogate key to join to the Brand dimension"  export: none}
constant: description__f_order__dim_browser_sk {  value: "Surrogate key to join to the Browser dimension based on the Browser used in the interaction, as derived from the User Agent String"  export: none}
constant: description__f_order__dim_currency_type_sk {  value: "The surrogate key to join to the currency type table to identify the currency type (business unit or global) used for converted currencies."  export: none}
constant: description__f_order__dim_customer_sk {  value: "The surrogate key to join to the customer dimension based on the email address from the order and the brand from which it was ordered"  export: none}
constant: description__f_order__dim_delivery_country_sk {  value: "The surrogate key to join to the country dimension, based on the delivery country of the order"  export: none}
constant: description__f_order__dim_device_sk {  value: "Surrogate key to join to the device dimension based on the device type used in the interaction, as derived from the User Agent String"  export: none}
constant: description__f_order__dim_earliest_actual_despatch_date_sk {  value: "The surrogate key to join to the date dimension based on the earliest date a line item was actually despatched. NULL when not yet determinedNot available for events < v3.x.x"  export: none}
constant: description__f_order__dim_earliest_estimated_delivery_date_sk {  value: "The surrogate key to join to the date dimension based on the earliest line item estimated delivery date when the order was placedNot available for events < v3.x.x"  export: none}
constant: description__f_order__dim_earliest_estimated_despatch_date_sk {  value: "The surrogate key to join to the date dimension based on the earliest line item estimated despatch date generated when the order was placedNot available for events < v3.x.x"  export: none}
constant: description__f_order__dim_latest_actual_despatch_date_sk {  value: "The surrogate key to join to the date dimension based on the latest date a line item was actually despatched. NULL when not yet determinedNot available for events < v3.x.x"  export: none}
constant: description__f_order__dim_latest_estimated_delivery_date_sk {  value: "The surrogate key to join to the date dimension based on the latest line item estimated delivery date when the order was placedNot available for events < v3.x.x"  export: none}
constant: description__f_order__dim_latest_estimated_despatch_date_sk {  value: "The surrogate key to join to the date dimension based on the latest line item estimated despatch date generated when the order was placedNot available for events < v3.x.x"  export: none}
constant: description__f_order__dim_locale_sk {  value: "The surrogate key to join to the Locale dimension, based on the locale of the website on which the order was placed"  export: none}
constant: description__f_order__dim_measure_currency_sk {  value: "The surrogate key to join to the currency dimension, based on the currency in which the measures in this row of the table are presented"  export: none}
constant: description__f_order__dim_member_sk {  value: "The surrogate key to join to the member dimension based on the member making the purchase"  export: none}
constant: description__f_order__dim_order_header_sk {  value: "The surrogate key to join to the Order Header dimension"  export: none}
constant: description__f_order__dim_order_status_sk {  value: "The surrogate key to join to the Order Status dimension, based on the most recently received status on the order"  export: none}
constant: description__f_order__dim_os_sk {  value: "Surrogate key to join to the OS dimension, derived from the User Agent String."  export: none}
constant: description__f_order__dim_parcel_address_sk {  value: "The surrogate key to join to the address dimension based on the postal address used in the orderNot available for events < v3.x.x"  export: none}
constant: description__f_order__dim_payment_currency_sk {  value: "The surrogate key to join to the currency dimension based on the currency in which the order was originally paid"  export: none}
constant: description__f_order__dim_platform_sk {  value: "The surrogate key to join to the platform used to place the order, based on the platform and versionNot available for events < v3.x.x"  export: none}
constant: description__f_order__dim_user_agent_type_sk {  value: "Surrogate key to join to the User Agent Type dimension, derived from the User Agent string. Examples are browser, mobile-browser, app, crawler, unknown"  export: none}
constant: description__f_order__discount_amount_credit_applied_excl_tax {  value: "The component of PRODUCT_DISCOUNT_AMOUNT_EXCL_TAX that would have been paid by Product Credits applied to the order, including taxNot available for events < v3.x.x"  export: none}
constant: description__f_order__discount_amount_credit_applied_incl_tax {  value: "The component of PRODUCT_DISCOUNT_AMOUNT_INCL_TAX that would have been paid by Product Credits applied to the order, including taxNot available for events < v3.x.x"  export: none}
constant: description__f_order__discounted_price_credit_applied_excl_tax {  value: "The component of PRODUCT_DISCOUNTED_PRICE_INCL_TAX that would have been paid by Product Credits applied to the order, excluding taxNot available for events < v3.x.x"  export: none}
constant: description__f_order__discounted_price_credit_applied_incl_tax {  value: "The component of PRODUCT_DISCOUNTED_PRICE_INCL_TAX that would have been paid by Product Credits applied to the order, including taxNot available for events < v3.x.x"  export: none}
constant: description__f_order__event_time {  value: "The time that the source event occurred. Note that for"  export: none}
constant: description__f_order__event_version {  value: "The semantic version of the event"  export: none}
constant: description__f_order__eventid {  value: "the unique id of the order event"  export: none}
constant: description__f_order__full_price_credit_applied_excl_tax {  value: "The component of PRODUCT_FULL_PRICE_EXCL_TAX that would have been paid by the Product Credits applied to the order, excluding taxNot available for events < v3.x.x"  export: none}
constant: description__f_order__full_price_credit_applied_incl_tax {  value: "The component of PRODUCT_FULL_PRICE_INCL_TAX that would have been paid by the Product Credits applied to the order, including tax. Not available for events < v3.x.x"  export: none}
constant: description__f_order__is_refund_order {  value: "True if the order contains a refund line item, False otherwise."  export: none}
constant: description__f_order__offer_array {  value: "The offer codes applied to the order"  export: none}
constant: description__f_order__order_pk {  value: "The primary key for this table"  export: none}
constant: description__f_order__product_credit_quantity {  value: "The number of items that were purchased using product credits.Not available for events < v3.x.x"  export: none}
constant: description__f_order__product_current_price_excl_tax {  value: "The amount that was charged for the product items on the order before discounts and credits were applied, excluding tax"  export: none}
constant: description__f_order__product_current_price_incl_tax {  value: "The amount that was charged for the product items on the order before discounts and credits were applied, including tax"  export: none}
constant: description__f_order__product_discount_amount_excl_tax {  value: "The amount of discount applied by offer codes against the order, excluding tax"  export: none}
constant: description__f_order__product_discount_amount_incl_tax {  value: "The amount of discount applied by offer codes against the order, including tax"  export: none}
constant: description__f_order__product_discounted_price_excl_tax {  value: "The amount that would have been paid by the customer for products after discounts are applied to the current price (but before any credits are applied) for the order, excluding tax"  export: none}
constant: description__f_order__product_discounted_price_incl_tax {  value: "The amount that would have been paid by the customer for products after discounts are applied to the current price (but before any credits are applied) for the order, including tax"  export: none}
constant: description__f_order__product_free_quantity {  value: "The number of items that were provided free of charge, correcting for source system anomalies.Not available for events < v3.x.x"  export: none}
constant: description__f_order__product_full_price_excl_tax {  value: "The amount that would have been paid at full price for all the product items in the order, excluding tax. Not available for events < v3.x.x"  export: none}
constant: description__f_order__product_full_price_incl_tax {  value: "The amount that would have been paid at full price for all the product items in the order, including tax. Not available for events < v3.x.x"  export: none}
constant: description__f_order__product_quantity {  value: "The number of items purchased, with corrections for the source system's handling of anomalous quantities (e.g. Babel and Retro Prints)"  export: none}
constant: description__f_order__refund_amount_excl_tax {  value: "The amount of the refund, excluding taxNot available for events < v3.x.x"  export: none}
constant: description__f_order__refund_amount_incl_tax {  value: "The amount of the refund, including taxNot available for events < v3.x.x"  export: none}
constant: description__f_order__refund_original_customer_order_id {  value: "The Internal Customer Order ID to which the refund appliesNot available for events < v3.x.x"  export: none}
constant: description__f_order__source {  value: "the source of the event"  export: none}
constant: description__f_order__special_offer_array {  value: "The special offer codes applied to the order"  export: none}
constant: description__f_order_item__base_price_ex_tax {  value: "The price of the item before upsell options x the quantity on the line"  export: none}
constant: description__f_order_item__base_price_inc_tax {  value: "The price of the item before upsell options x the quantity on the line"  export: none}
constant: description__f_order_item__basket_price_ex_tax {  value: "The total price of the Creation as it is added to the basket including upsell options (x the quantity on the line), before discount."  export: none}
constant: description__f_order_item__basket_price_inc_tax {  value: "The total price of the Creation as it is added to the basket including upsell options (x the quantity on the line), before discount."  export: none}
constant: description__f_order_item__basket_product_id {  value: "The Babel Product ID"  export: none}
constant: description__f_order_item__basket_product_name {  value: "The Babel Product name."  export: none}
constant: description__f_order_item__cash_credit_type {  value: "For 'cash credit' line items, the type of cash credit applied"  export: none}
constant: description__f_order_item__creation_external_id {  value: "for flex - creationID; for prints - photoID; for everything else externalD"  export: none}
constant: description__f_order_item__creation_type {  value: "The studio or app in which the creation was edited (if available)"  export: none}
constant: description__f_order_item__credit_quantity {  value: "The quantity of the line item that were purchased using product credits"  export: none}
constant: description__f_order_item__current_price_ex_tax {  value: "The current price of the item (at the time of the sale) before upsell options x the quantity on the line"  export: none}
constant: description__f_order_item__current_price_inc_tax {  value: "The current price of the item (at the time of the sale) before upsell options x the quantity on the line"  export: none}
constant: description__f_order_item__delivery_order_item_id {  value: "The Babel Identifier for the delivery item associated with the product ordered. Only populated for product line items"  export: none}
constant: description__f_order_item__dim_actual_delivery_date_sk {  value: "The surrogate key to join to the date dimension based on the date the line item was actually delivered. NULL when not yet determined"  export: none}
constant: description__f_order_item__dim_basket_product_sk {  value: "The surrogate key to join to the basket product dimension"  export: none}
constant: description__f_order_item__dim_brand_sk {  value: "The surrogate key to join to the Brand dimension"  export: none}
constant: description__f_order_item__dim_browser_sk {  value: "Surrogate key to join to the Browser dimension based on the Browser used in the interaction, as derived from the User Agent String"  export: none}
constant: description__f_order_item__dim_customer_sk {  value: "The surrogate key to join to the customer dimension based on the email address from the order and the brand from which it was ordered"  export: none}
constant: description__f_order_item__dim_delivery_country_sk {  value: "The surrogate key to join to the Country dimension, based on the delivery address of the line item"  export: none}
constant: description__f_order_item__dim_delivery_method_sk {  value: "The surrogate key to join to the Delivery Method dimension, based on the line item"  export: none}
constant: description__f_order_item__dim_device_sk {  value: "Surrogate key to join to the device dimension based on the device type used in the interaction, as derived from the User Agent String"  export: none}
constant: description__f_order_item__dim_estimated_delivery_date_sk {  value: "The surrogate key to join to the date dimension based on the estimated delivery date when the order was placed"  export: none}
constant: description__f_order_item__dim_estimated_dispatch_date_sk {  value: "The surrogate key to join to the date dimension based on the estimated despatch date generated when the order was placed"  export: none}
constant: description__f_order_item__dim_line_item_type_sk {  value: "The surrogate key to join to the line item type of the order."  export: none}
constant: description__f_order_item__dim_locale_sk {  value: "The surrogate key to join to the Locale dimension, based on the locale of the website on which the order was placed"  export: none}
constant: description__f_order_item__dim_member_channel_sk {  value: "Surrogate key to join to the Channel dimension, based on the Member's channel at the time of the order"  export: none}
constant: description__f_order_item__dim_member_sk {  value: "The surrogate key to join to the member dimension based on the member making the purchase"  export: none}
constant: description__f_order_item__dim_order_channel_sk {  value: "Surrogate key to join to the Channel dimension, based on the channel assigned to the order"  export: none}
constant: description__f_order_item__dim_order_header_sk {  value: "The surrogate key to join to the Order Header dimension"  export: none}
constant: description__f_order_item__dim_order_status_sk {  value: "The surrogate key to join to the Order Status dimension, based on the most recently received status on the order"  export: none}
constant: description__f_order_item__dim_os_sk {  value: "Surrogate key to join to the OS dimension, derived from the User Agent String."  export: none}
constant: description__f_order_item__dim_parcel_address_sk {  value: "The surrogate key to join to the address dimension based on the postal address used in the order"  export: none}
constant: description__f_order_item__dim_payment_currency_sk {  value: "The surrogate key to join to the currency dimension based on the currency in which the order was originally paid"  export: none}
constant: description__f_order_item__dim_platform_sk {  value: "The surrogate key to join to the platform used to place the order, based on the platform and version"  export: none}
constant: description__f_order_item__dim_provisional_production_location_sk {  value: "Surrogate key to join to the Production Location dimension, based on the provisional production location on the order"  export: none}
constant: description__f_order_item__dim_s4_cogs_currency_sk {  value: "The surrogate key to link to the Currency dimension, based on the currency of the S4 COGS values"  export: none}
constant: description__f_order_item__dim_s4_shipping_cogs_currency_sk {  value: "The surrogate key to link to the Currency dimension, based on the currency of the S4 COGS values"  export: none}
constant: description__f_order_item__dim_user_agent_type_sk {  value: "Surrogate key to join to the User Agent Type dimension, derived from the User Agent string. Examples are browser, mobile-browser, app, crawler, unknown"  export: none}
constant: description__f_order_item__discounted_base_price_ex_tax {  value: "The price of the item before upsell options x the quantity on the line, after discount codes are applied"  export: none}
constant: description__f_order_item__discounted_base_price_inc_tax {  value: "The price of the item before upsell options x the quantity on the line, after discount codes are applied"  export: none}
constant: description__f_order_item__discounted_options_price_ex_tax {  value: "The total price of upsell options (excluding pages) x the quantity on the line, after discount"  export: none}
constant: description__f_order_item__discounted_options_price_inc_tax {  value: "The total price of upsell options (excluding pages) x the quantity on the line, after discount"  export: none}
constant: description__f_order_item__discounted_pages_price_ex_tax {  value: "The total price of pages upsell x the quantity on the line, after discount"  export: none}
constant: description__f_order_item__discounted_pages_price_inc_tax {  value: "The total price of pages upsell x the quantity on the line, after discount"  export: none}
constant: description__f_order_item__discounted_price_ex_tax {  value: "The total price of the Creation as it is added to the basket including upsell options (x the quantity on the line), after discount"  export: none}
constant: description__f_order_item__discounted_price_inc_tax {  value: "The total price of the Creation as it is added to the basket including upsell options (x the quantity on the line), after discount"  export: none}
constant: description__f_order_item__estimated_despatch_datetime_utc {  value: "The estimated despatch datetime"  export: none}
constant: description__f_order_item__event_time {  value: "The time that the source event occurred"  export: none}
constant: description__f_order_item__event_type {  value: "The type of the event."  export: none}
constant: description__f_order_item__event_version {  value: "The maximum version number of the event"  export: none}
constant: description__f_order_item__eventid {  value: "the unique id of the order event"  export: none}
constant: description__f_order_item__free_quantity {  value: "The quantity of the line item that were provided free of charge, correcting for source system anomalies"  export: none}
constant: description__f_order_item__full_price_ex_tax {  value: "The full price of the item (before upsell options, but after quantity-based pricing is applied) x quantity on the line"  export: none}
constant: description__f_order_item__full_price_inc_tax {  value: "The full price of the item (before upsell options, but after quantity-based pricing is applied) x quantity on the line"  export: none}
constant: description__f_order_item__incremental_credit_sales_ex_tax {  value: "The component of incremental spend that was associated with the redemption of credits"  export: none}
constant: description__f_order_item__incremental_credit_sales_inc_tax {  value: "The component of incremental spend that was associated with the redemption of credits"  export: none}
constant: description__f_order_item__incremental_spend_ex_tax {  value: "The total net spend on upsell options for the line"  export: none}
constant: description__f_order_item__incremental_spend_inc_tax {  value: "The total net spend on upsell options for the line"  export: none}
constant: description__f_order_item__line_price_ex_tax {  value: "The price charged to the customer for the line (based on the discounted price) after credits have been applied"  export: none}
constant: description__f_order_item__line_price_inc_tax {  value: "The price charged to the customer for the line (based on the discounted price) after credits have been applied"  export: none}
constant: description__f_order_item__line_price_paid_by_credit_ex_tax {  value: "The net price paid for the line after product credits and discounts are applied (excluding shipping)"  export: none}
constant: description__f_order_item__line_price_paid_by_credit_inc_tax {  value: "The net price paid for the line after product credits and discounts are applied (excluding shipping)"  export: none}
constant: description__f_order_item__nominal_tax_rate {  value: "The nominal tax rate applied to the order item, based on the delivery country"  export: none}
constant: description__f_order_item__options_price_ex_tax {  value: "The total price of upsell options (excluding pages) x the quantity on the line"  export: none}
constant: description__f_order_item__options_price_inc_tax {  value: "The total price of upsell options (excluding pages) x the quantity on the line"  export: none}
constant: description__f_order_item__order_item_id {  value: "The Babel identifier for the line item on the order. Does not identify the product in any way."  export: none}
constant: description__f_order_item__order_item_pk {  value: "The primary key for this table"  export: none}
constant: description__f_order_item__pages_price_ex_tax {  value: "The total price of pages upsell x the quantity on the line"  export: none}
constant: description__f_order_item__pages_price_inc_tax {  value: "The total price of pages upsell x the quantity on the line"  export: none}
constant: description__f_order_item__price_paid_for_credit_ex_tax {  value: "The total price that was originally paid for product credits used against the line"  export: none}
constant: description__f_order_item__price_paid_for_credit_inc_tax {  value: "The total price that was originally paid for credits used against the line"  export: none}
constant: description__f_order_item__provisional_production_location {  value: "The provisional Production Location (e.g. WFR, STR etc) for the Product as determined by Babel. IWays might decide to overwrite Babel production location."  export: none}
constant: description__f_order_item__provisional_production_order_id {  value: "The Babel Production Order ID that contains this Order Line Item"  export: none}
constant: description__f_order_item__provisional_production_sku {  value: "The provisional Production SKU. This may be overridden by iWays."  export: none}
constant: description__f_order_item__quantity {  value: "The quantity of the line item, with corrections for the source system's handling of anomalous quantities (e.g. Babel and Retro Prints)"  export: none}
constant: description__f_order_item__s4_cogs {  value: "The S4 COGS (exc. tax) of the product ordered, based on the S4 category of the product ordered, the provisional production location and the despatched date (or estimated despatch date for orders that have not yet shipped). Only populated for product line item types"  export: none}
constant: description__f_order_item__s4_shipping_cogs {  value: "The S4 COGS (exc. tax) of the product ordered, based on the S4 category of the product ordered, the provisional production location, the delivery country, the business unit and the despatched date (or estimated despatch date for orders that have not yet shipped). USE WITH CARE - note that S4 Shipping COGS is designed to work at the product line item level, not at the delivery level and this has potential to cause unexpected behaviour when excluding deliveries from calculations"  export: none}
constant: description__f_order_item__shipping_price_before_discount_excl_tax {  value: "The price charged to the customer for shipping, before discounts are applied. This is only populated for lines that are shipping charges."  export: none}
constant: description__f_order_item__shipping_price_before_discount_incl_tax {  value: "The price charged to the customer for shipping, before discounts are applied. This is only populated for lines that are shipping charges."  export: none}
constant: description__f_order_item__shipping_price_ex_tax {  value: "The price charged to the customer for shipping. This is only populated for lines that are shipping charges."  export: none}
constant: description__f_order_item__shipping_price_inc_tax {  value: "The price charged to the customer for shipping. This is only populated for lines that are shipping charges."  export: none}
constant: description__f_order_item__slash_price_ex_tax {  value: "The current promotional price of the item (before upsell options) x quantity on the line. NULL if no slash price is set"  export: none}
constant: description__f_order_item__slash_price_inc_tax {  value: "The current promotional price of the item (before upsell options) x quantity on the line. NULL if no slash price is set"  export: none}
constant: description__f_order_item__source {  value: "the source of the event"  export: none}
constant: description__f_order_item__system_free_quantity {  value: "The quantity of the line item (as recorded by the source system) that were provided free of charge."  export: none}
constant: description__f_order_item__system_quantity {  value: "The quantity of the line item as recorded by the source system. Note that this is not correct for Retro Prints, and is corrected in QUANTITY"  export: none}
constant: description__f_order_item__upsell_options_array {  value: "An array containing the Babel Product IDs of upsell options that were selected for this product"  export: none}
constant: description__f_sales_and_revenue__basket_product_id {  value: "The Babel Product ID"  export: none}
constant: description__f_sales_and_revenue__basket_product_name {  value: "The Babel Product name."  export: none}
constant: description__f_sales_and_revenue__cash_credit_type {  value: "For 'cash credit' line item types, the type of cash credit applied"  export: none}
constant: description__f_sales_and_revenue__creation_external_id {  value: "for flex - creationID; for prints - photoID; for everything else externalD"  export: none}
constant: description__f_sales_and_revenue__creation_type {  value: "The studio or app in which the creation was edited (if available)"  export: none}
constant: description__f_sales_and_revenue__customer_spend {  value: "The Customer Spend amount of the Order line. Note that this includes delivery and sales of credit, but excludes sales by credit. Customer Spend includes sales tax by default"  export: none}
constant: description__f_sales_and_revenue__customer_spend_before_discount {  value: "The Customer Spend amount of the Order line, before offer code discounts are applied. Note that this includes delivery and sales of credit, but excludes sales by credit. Customer Spend includes sales tax by default"  export: none}
constant: description__f_sales_and_revenue__customer_spend_before_discount_exc_tax {  value: "As CUSTOMER_SPEND_BEFORE_DISCOUNT but excluding sales tax"  export: none}
constant: description__f_sales_and_revenue__customer_spend_exc_tax {  value: "As CUSTOMER_SPEND, but excluding sales tax"  export: none}
constant: description__f_sales_and_revenue__customer_spend_full_price {  value: "The amount the customer would have spend on the order if they had paid at full price. Note that this excludes dry sales paid by credit, but includes sales tax."  export: none}
constant: description__f_sales_and_revenue__customer_spend_full_price_exc_tax {  value: "As CUSTOMER_SPEND_FULL_PRICE but excluding sales tax"  export: none}
constant: description__f_sales_and_revenue__customer_spend_quantity {  value: "The quantity of items in the order. For Customer Spend this includes delivery and sales of credit but excludes dry sales paid by credit."  export: none}
constant: description__f_sales_and_revenue__customer_spend_shipping_amount {  value: "The shipping amount of the Order Line, including tax. Note that shipping is already included in Customer Spend metrics."  export: none}
constant: description__f_sales_and_revenue__customer_spend_shipping_amount_exc_tax {  value: "As CUSTOMER_SPEND_SHIPPING_AMOUNT but excluding sales tax"  export: none}
constant: description__f_sales_and_revenue__delivery_order_item_id {  value: "The Babel Identifier for the delivery item associated with the product ordered. Only populated for product line items"  export: none}
constant: description__f_sales_and_revenue__dim_actual_delivery_date_sk {  value: "The surrogate key to join to the date dimension based on the date the line item was actually delivered. NULL when not yet determined"  export: none}
constant: description__f_sales_and_revenue__dim_basket_product_sk {  value: "The surrogate key to join to the Basket Product dimension"  export: none}
constant: description__f_sales_and_revenue__dim_brand_sk {  value: "The surrogate key to join to the Brand dimension"  export: none}
constant: description__f_sales_and_revenue__dim_browser_sk {  value: "Surrogate key to join to the Browser dimension based on the Browser used in the interaction, as derived from the User Agent String"  export: none}
constant: description__f_sales_and_revenue__dim_currency_type_sk {  value: "The surrogate key to join to the currency type table to identify the currency type (business unit or global) used for converted currencies."  export: none}
constant: description__f_sales_and_revenue__dim_customer_sk {  value: "The surrogate key to join to the customer dimension based on the email address from the order and the brand from which it was ordered"  export: none}
constant: description__f_sales_and_revenue__dim_delivery_method_sk {  value: "The surrogate key to join to the Delivery Method dimension, based on the line item"  export: none}
constant: description__f_sales_and_revenue__dim_device_sk {  value: "Surrogate key to join to the device dimension based on the device type used in the interaction, as derived from the User Agent String"  export: none}
constant: description__f_sales_and_revenue__dim_estimated_delivery_date_sk {  value: "The surrogate key to join to the date dimension based on the estimated delivery date when the order was placed"  export: none}
constant: description__f_sales_and_revenue__dim_estimated_despatch_date_sk {  value: "The surrogate key to join to the date dimension based on the estimated despatch date generated when the order was placed"  export: none}
constant: description__f_sales_and_revenue__dim_line_item_type_sk {  value: "The surrogate key to join to the line item type of the order."  export: none}
constant: description__f_sales_and_revenue__dim_locale_sk {  value: "The surrogate key to join to the Locale dimension, based on the locale of the website on which the order was placed"  export: none}
constant: description__f_sales_and_revenue__dim_measure_currency_sk {  value: "The surrogate key to join to the currency dimension, based on the currency in which the measures in this row of the table are presented"  export: none}
constant: description__f_sales_and_revenue__dim_member_channel_sk {  value: "Surrogate key to join to the Channel dimension, based on the member's channel at the time of the order"  export: none}
constant: description__f_sales_and_revenue__dim_member_sk {  value: "The surrogate key to join to the member dimension based on the member making the purchase"  export: none}
constant: description__f_sales_and_revenue__dim_order_channel_sk {  value: "Surrogate key to join to the Channel dimension, based on the channel assigned to the order"  export: none}
constant: description__f_sales_and_revenue__dim_order_header_sk {  value: "The surrogate key to join to the Order Header dimension"  export: none}
constant: description__f_sales_and_revenue__dim_order_status_sk {  value: "The surrogate key to join to the Order Status dimension, based on the most recently received status on the order"  export: none}
constant: description__f_sales_and_revenue__dim_os_sk {  value: "Surrogate key to join to the OS dimension, derived from the User Agent String."  export: none}
constant: description__f_sales_and_revenue__dim_parcel_address_sk {  value: "The surrogate key to join to the address dimension based on the postal address used in the order"  export: none}
constant: description__f_sales_and_revenue__dim_payment_currency_sk {  value: "The surrogate key to join to the currency dimension based on the currency in which the order was originally paid"  export: none}
constant: description__f_sales_and_revenue__dim_platform_sk {  value: "The surrogate key to join to the platform used to place the order, based on the platform and version"  export: none}
constant: description__f_sales_and_revenue__dim_user_agent_type_sk {  value: "Surrogate key to join to the User Agent Type dimension, derived from the User Agent string. Examples are browser, mobile-browser, app, crawler, unknown"  export: none}
constant: description__f_sales_and_revenue__estimated_despatch_datetime_utc {  value: "The estimated despatch date for the order line"  export: none}
constant: description__f_sales_and_revenue__event_type {  value: "The most recent event type that updated this record"  export: none}
constant: description__f_sales_and_revenue__event_version {  value: "The most recent event version that updated this record"  export: none}
constant: description__f_sales_and_revenue__gross_quantity {  value: "The total quantity of items in the order, including purchase of credit, delivery and dry sales. Note that this quantity will not aggregate correctly as it will double-count the sale and redemption of credit"  export: none}
constant: description__f_sales_and_revenue__is_customer_spend {  value: "True if this line should be included in Customer Spend metrics, else False"  export: none}
constant: description__f_sales_and_revenue__is_order_value {  value: "True if this line should be included in Order Value metrics, else False (includes dry sales, excludes sales OF credit and shipping)"  export: none}
constant: description__f_sales_and_revenue__is_revenue {  value: "True if this line should be included in Revenue metrics , else False"  export: none}
constant: description__f_sales_and_revenue__nominal_tax_rate {  value: "The nominal tax rate applied to the order item, based on the delivery country"  export: none}
constant: description__f_sales_and_revenue__order_item_id {  value: "The Babel identifier for the line item on the order. Does not identify the product in any way."  export: none}
constant: description__f_sales_and_revenue__order_paid_date_sk {  value: "The SK for the date on which the payment was processed."  export: none}
constant: description__f_sales_and_revenue__order_paid_datetime_utc {  value: "The date on which payment was made. This is subtly different to the SALES_DATE as it does not account for the processing time on the transaction. It is included here only to prevent users joining the order header dimension to the date dimension"  export: none}
constant: description__f_sales_and_revenue__order_value {  value: "The Order Value of the Order line. Note that this excludes delivery and sales of credit, but includes sales by credit at the price originally paid for the credit (excluding credit renewals). Order Value excludes sales tax by default"  export: none}
constant: description__f_sales_and_revenue__order_value_before_discount {  value: "The Order Value of the line on the order before discounts are applied and before credits are applied."  export: none}
constant: description__f_sales_and_revenue__order_value_before_discount_inc_tax {  value: "ORDER_VALUE_BEFORE_DISCOUNT, but inclusive of sales tax"  export: none}
constant: description__f_sales_and_revenue__order_value_delivery_quantity {  value: "The number of delivery charges in the order. Note that delivery charges are not included in Order Value."  export: none}
constant: description__f_sales_and_revenue__order_value_dry_sales_quantity {  value: "The quantity of items in the order. For Order Value this excludes delivery and sales of credit."  export: none}
constant: description__f_sales_and_revenue__order_value_full_price {  value: "The Order Value of the order if the dry sales were charged at full price."  export: none}
constant: description__f_sales_and_revenue__order_value_full_price_inc_tax {  value: "ORDER_VALUE_FULL_PRICE, but inclusive of sales tax"  export: none}
constant: description__f_sales_and_revenue__order_value_inc_tax {  value: "ORDER_VALUE, but inclusive of sales tax."  export: none}
constant: description__f_sales_and_revenue__order_value_s4_cogs {  value: "The S4 COGS corresponding to the Order Value amount for products. S4 Metrics are not reliable at the individual order level and should only be used for decisions when aggregated to the S4 level or above."  export: none}
constant: description__f_sales_and_revenue__order_value_s4_margin {  value: "The revenue margin, based on the S4 COGS. Note that by default, this includes S4 Shipping Margin (since revenue, by default, includes shipping revenue). S4 Metrics are not reliable at the individual order level and should only be used for decisions when aggregated to the S4 level or above."  export: none}
constant: description__f_sales_and_revenue__order_value_s4_shipping_cogs {  value: "The S4 Shipping COGS associated with the products sold, aggregated to the relevant delivery line item, based on the provisional production location and the delivery country. Note that this metric scales with the quantity ordered (this is how S4 Shipping COGS unit cost values are defined). S4 Metrics are not reliable at the individual order level and should only be used for decisions when aggregated to the S4 level or above."  export: none}
constant: description__f_sales_and_revenue__order_value_s4_shipping_margin {  value: "The margin on shipping, based on the S4 Shipping COGS. S4 Metrics are not reliable at the individual order level and should only be used for decisions when aggregated to the S4 level or above."  export: none}
constant: description__f_sales_and_revenue__order_value_shipping_amount {  value: "The Order Value of shipping on the order, excluding tax (by default). This is not included in the Order Value metric."  export: none}
constant: description__f_sales_and_revenue__order_value_shipping_amount_inc_tax {  value: "ORDER_VALUE_SHIPPING_AMOUNT, but inclusive of sales tax"  export: none}
constant: description__f_sales_and_revenue__prorated_product_delivery_charge_exc_tax {  value: ""  export: none}
constant: description__f_sales_and_revenue__prorated_product_delivery_charge_inc_tax {  value: "The delivery charge associated with the product line item, prorated to the product line based on the relative Order Value of this line vs the sum of the Order Value of all the items associated with that delivery item"  export: none}
constant: description__f_sales_and_revenue__provisional_production_location {  value: "The provisional Production Location (e.g. WFR, STR etc) for the Product as determined by Babel. IWays might decide to overwrite Babel production location."  export: none}
constant: description__f_sales_and_revenue__provisional_production_order_id {  value: "The Babel Production Order ID that contains this Order Line Item"  export: none}
constant: description__f_sales_and_revenue__provisional_production_sku {  value: "The provisional Production SKU. This may be overridden by iWays."  export: none}
constant: description__f_sales_and_revenue__revenue {  value: "The revenue from the order. This includes revenue from deliveries and includes the redemption of credits at the price originally paid for the credit, but excludes the sale of credits. Revenue excludes sales tax."  export: none}
constant: description__f_sales_and_revenue__revenue_before_discount {  value: "As REVENUE, but before any discounts or credits are applied."  export: none}
constant: description__f_sales_and_revenue__revenue_before_discount_inc_tax {  value: "As REVENUE_BEFORE_DISCOUNT but inclusive of tax"  export: none}
constant: description__f_sales_and_revenue__revenue_date_sk {  value: "The SK for the date on which the on which the order was dispatched"  export: none}
constant: description__f_sales_and_revenue__revenue_datetime_utc {  value: "The date on which the order was dispatched"  export: none}
constant: description__f_sales_and_revenue__revenue_full_price {  value: "The Revenue from the order if the customer had paid full price."  export: none}
constant: description__f_sales_and_revenue__revenue_full_price_inc_tax {  value: "As REVENUE_FULL_PRICE but inclusive of tax."  export: none}
constant: description__f_sales_and_revenue__revenue_inc_tax {  value: "As REVENUE but inclusive of tax."  export: none}
constant: description__f_sales_and_revenue__revenue_quantity {  value: "The quantity associated with the revenue. This includes delivery charges and dry sales by credit but does not include sales of product credits."  export: none}
constant: description__f_sales_and_revenue__revenue_s4_cogs {  value: "The S4 COGS corresponding to the Revenue amount for products. S4 Metrics are not reliable at the individual order level and should only be used for decisions when aggregated to the S4 level or above. By default this includes the Shipping COGS for delivery items."  export: none}
constant: description__f_sales_and_revenue__revenue_s4_margin {  value: "The revenue margin, based on the S4 COGS. Note that by default, this includes S4 Shipping Margin (since revenue, by default, includes shipping revenue). S4 Metrics are not reliable at the individual order level and should only be used for decisions when aggregated to the S4 level or above."  export: none}
constant: description__f_sales_and_revenue__revenue_s4_shipping_cogs {  value: "The S4 Shipping COGS associated with the products sold, aggregated to the relevant delivery line item, based on the provisional production location and the delivery country. Note that this metric scales with the quantity ordered (this is how S4 Shipping COGS unit cost values are defined). S4 Metrics are not reliable at the individual order level and should only be used for decisions when aggregated to the S4 level or above."  export: none}
constant: description__f_sales_and_revenue__revenue_s4_shipping_margin {  value: "The margin on shipping, based on the S4 Shipping COGS. S4 Metrics are not reliable at the individual order level and should only be used for decisions when aggregated to the S4 level or above."  export: none}
constant: description__f_sales_and_revenue__revenue_shipping_amount {  value: "The amount of Shipping charges in the order, excluding sales tax. Shipping charges are included in Revenue by default."  export: none}
constant: description__f_sales_and_revenue__revenue_shipping_amount_inc_tax {  value: "As REVENUE_SHIPPING_AMOUNT but inclusive of tax."  export: none}
constant: description__f_sales_and_revenue__sales_and_revenue_pk {  value: "The primary key for this table"  export: none}
constant: description__f_sales_and_revenue__sales_date_sk {  value: "The SK for the date on which the sale was recognised. At the moment, this is the date the transaction was processed"  export: none}
constant: description__f_sales_and_revenue__sales_datetime_utc {  value: "For most activities, the date on which the payment was completed and the sale is recognised."  export: none}
constant: description__f_sales_revenue_refunds_summary__cash_credit_customer_spend {  value: "The Customer spend value of the Cash Credits applied to the order"  export: none}
constant: description__f_sales_revenue_refunds_summary__cash_credit_customer_spend_before_discount {  value: "The Customer spend value of the cash credits applied to the order, before discounts are applied"  export: none}
constant: description__f_sales_revenue_refunds_summary__cash_credit_customer_spend_before_discount_exc_tax {  value: "The Customer spend value of the cash credits applied to the order, excluding the sales tax on the order, before discounts are applied"  export: none}
constant: description__f_sales_revenue_refunds_summary__cash_credit_customer_spend_exc_tax {  value: "The Customer spend value of the cash credits applied to the order, excluding the sales tax on the order"  export: none}
constant: description__f_sales_revenue_refunds_summary__cash_credit_quantity {  value: "The number of Cash Credits applied to the order"  export: none}
constant: description__f_sales_revenue_refunds_summary__delivery_customer_spend {  value: "The Customer Spend amount of delivery items on the Order."  export: none}
constant: description__f_sales_revenue_refunds_summary__delivery_customer_spend_before_discount {  value: "The Customer Spend amount of the Order line, before offer code discounts are applied. Note that this includes delivery and sales of credit, but excludes sales by credit. Customer Spend includes sales tax by default"  export: none}
constant: description__f_sales_revenue_refunds_summary__delivery_customer_spend_before_discount_exc_tax {  value: "As DELIVERY_CUSTOMER_SPEND_BEFORE_DISCOUNT, but excluding sales tax"  export: none}
constant: description__f_sales_revenue_refunds_summary__delivery_customer_spend_exc_tax {  value: "As DELIVERY_CUSTOMER_SPEND, but excluding sales tax"  export: none}
constant: description__f_sales_revenue_refunds_summary__delivery_order_value {  value: "The Order Value of shipping on the order, excluding tax (by default)."  export: none}
constant: description__f_sales_revenue_refunds_summary__delivery_order_value_inc_tax {  value: "DELIVERY_ORDER_VALUE_SHIPPING_AMOUNT, but inclusive of sales tax."  export: none}
constant: description__f_sales_revenue_refunds_summary__delivery_quantity {  value: "The quantity of delivery items on the order."  export: none}
constant: description__f_sales_revenue_refunds_summary__delivery_revenue {  value: "The revenue from deliveries on the order."  export: none}
constant: description__f_sales_revenue_refunds_summary__delivery_revenue_before_discount {  value: "As DELIVERY_REVENUE, but before any discounts or credits are applied."  export: none}
constant: description__f_sales_revenue_refunds_summary__delivery_revenue_before_discount_inc_tax {  value: "As DELIVERY_REVENUE, but including Sales tax and before any discounts or credits are applied"  export: none}
constant: description__f_sales_revenue_refunds_summary__delivery_revenue_inc_tax {  value: "As DELIVERY_REVENUE, but including Sales tax."  export: none}
constant: description__f_sales_revenue_refunds_summary__delivery_revenue_s4_shipping_margin {  value: "DELIVER_REVENUE less the S4 SHIPPING COGS on the order."  export: none}
constant: description__f_sales_revenue_refunds_summary__dim_brand_sk {  value: "The surrogate key to join to the Brand dimension"  export: none}
constant: description__f_sales_revenue_refunds_summary__dim_browser_sk {  value: "Surrogate key to join to the Browser dimension based on the Browser used in the interaction, as derived from the User Agent String"  export: none}
constant: description__f_sales_revenue_refunds_summary__dim_currency_type_sk {  value: "The surrogate key to join to the currency type table to identify the currency type (business unit or global) used for converted currencies."  export: none}
constant: description__f_sales_revenue_refunds_summary__dim_customer_sk {  value: "The surrogate key to join to the customer dimension based on the email address from the order and the brand from which it was ordered"  export: none}
constant: description__f_sales_revenue_refunds_summary__dim_delivery_country_sk {  value: "The surrogate key to join to the Country dimension, based on the delivery address of the line item.Note that for refunds, if the original order went to multiple countries (possible for Hofmann orders) then one of the countries on the original order will be selected arbitrarily."  export: none}
constant: description__f_sales_revenue_refunds_summary__dim_device_sk {  value: "Surrogate key to join to the device dimension based on the device type used in the interaction, as derived from the User Agent String"  export: none}
constant: description__f_sales_revenue_refunds_summary__dim_earliest_estimated_despatch_date_sk {  value: "The surrogate key to join to the date dimension based on the earliest estimated despatch date generated when the order was placed"  export: none}
constant: description__f_sales_revenue_refunds_summary__dim_estimated_delivery_date_sk {  value: "The surrogate key to join to the date dimension based on the estimated delivery date when the order was placed"  export: none}
constant: description__f_sales_revenue_refunds_summary__dim_latest_estimated_despatch_date_sk {  value: "The surrogate key to join to the date dimension based on the latest estimated despatch date generated when the order was placed"  export: none}
constant: description__f_sales_revenue_refunds_summary__dim_locale_sk {  value: "The surrogate key to join to the Locale dimension, based on the locale of the website on which the order was placed"  export: none}
constant: description__f_sales_revenue_refunds_summary__dim_measure_currency_sk {  value: "The surrogate key to join to the currency dimension, based on the currency in which the measures in this row of the table are presented"  export: none}
constant: description__f_sales_revenue_refunds_summary__dim_member_channel_sk {  value: "Surrogate key to join to the Channel dimension, based on the member's channel at the time of the order"  export: none}
constant: description__f_sales_revenue_refunds_summary__dim_member_sk {  value: "The surrogate key to join to the member dimension based on the member making the purchase"  export: none}
constant: description__f_sales_revenue_refunds_summary__dim_order_channel_sk {  value: "Surrogate key to join to the Channel dimension, based on the channel assigned to the order"  export: none}
constant: description__f_sales_revenue_refunds_summary__dim_order_header_sk {  value: "The surrogate key to join to the Order Header dimension"  export: none}
constant: description__f_sales_revenue_refunds_summary__dim_order_status_sk {  value: "The surrogate key to join to the Order Status dimension, based on the most recently received status on the order"  export: none}
constant: description__f_sales_revenue_refunds_summary__dim_os_sk {  value: "Surrogate key to join to the OS dimension, derived from the User Agent String."  export: none}
constant: description__f_sales_revenue_refunds_summary__dim_parcel_address_sk {  value: "The surrogate key to join to the address dimension based on the postal address used in the order"  export: none}
constant: description__f_sales_revenue_refunds_summary__dim_payment_currency_sk {  value: "The surrogate key to join to the currency dimension based on the currency in which the order was originally paid"  export: none}
constant: description__f_sales_revenue_refunds_summary__dim_platform_sk {  value: "The surrogate key to join to the platform used to place the order, based on the platform and version"  export: none}
constant: description__f_sales_revenue_refunds_summary__dim_user_agent_type_sk {  value: "Surrogate key to join to the User Agent Type dimension, derived from the User Agent string. Examples are browser, mobile-browser, app, crawler, unknown"  export: none}
constant: description__f_sales_revenue_refunds_summary__dry_sale_customer_spend {  value: "The Customer Spend amount of the dry sales on the Order. Note that this excludes sales by credit. Customer Spend includes sales tax by default"  export: none}
constant: description__f_sales_revenue_refunds_summary__dry_sale_customer_spend_before_discount {  value: "The Customer Spend amount of the dry sales on the Order, before offer code discounts are applied. Note that this excludes sales by credit. Customer Spend includes sales tax by default"  export: none}
constant: description__f_sales_revenue_refunds_summary__dry_sale_customer_spend_before_discount_exc_tax {  value: "The Customer Spend amount of the dry sales on the Order, excluding sales tax, before offer code discounts are applied. Note that this excludes sales by credit."  export: none}
constant: description__f_sales_revenue_refunds_summary__dry_sale_customer_spend_exc_tax {  value: "The Customer Spend amount of the dry sales on the Order, excluding sales tax. Note that this excludes sales by credit."  export: none}
constant: description__f_sales_revenue_refunds_summary__dry_sale_order_value {  value: "The Order Value of the Order line. Note that this excludes delivery and sales of credit, but includes sales by credit at the price originally paid for the credit (excluding credit renewals). Order Value excludes sales tax by default"  export: none}
constant: description__f_sales_revenue_refunds_summary__dry_sale_order_value_before_discount {  value: "The Order Value of the line on the order before discounts are applied and before credits are applied."  export: none}
constant: description__f_sales_revenue_refunds_summary__dry_sale_order_value_before_discount_inc_tax {  value: "DRY_SALE_ORDER_VALUE_BEFORE_DISCOUNT, but inclusive of sales tax."  export: none}
constant: description__f_sales_revenue_refunds_summary__dry_sale_order_value_inc_tax {  value: "DRY_SALE_ORDER_VALUE, but inclusive of sales tax."  export: none}
constant: description__f_sales_revenue_refunds_summary__dry_sale_order_value_s4_cogs {  value: "The S4 COGS corresponding to the Order Value amount for products. S4 Metrics are not reliable at the individual order level and should only be used for decisions when aggregated to the S4 level or above."  export: none}
constant: description__f_sales_revenue_refunds_summary__dry_sale_order_value_s4_margin {  value: "The revenue margin, based on the S4 COGS. Note that by default, this includes S4 Shipping Margin (since revenue, by default, includes shipping revenue). S4 Metrics are not reliable at the individual order level and should only be used for decisions when aggregated to the S4 level or above."  export: none}
constant: description__f_sales_revenue_refunds_summary__dry_sale_order_value_s4_shipping_cogs {  value: "The S4 Shipping COGS associated with the products sold, aggregated to the relevant delivery line item, based on the provisional production location and the delivery country. Note that this metric scales with the quantity ordered (this is how S4 Shipping COGS unit cost values are defined). S4 Metrics are not reliable at the individual order level and should only be used for decisions when aggregated to the S4 level or above."  export: none}
constant: description__f_sales_revenue_refunds_summary__dry_sale_order_value_s4_shipping_margin {  value: "The margin on shipping, based on the S4 Shipping COGS. S4 Metrics are not reliable at the individual order level and should only be used for decisions when aggregated to the S4 level or above."  export: none}
constant: description__f_sales_revenue_refunds_summary__dry_sale_quantity {  value: "The quantity of dry sale items in the order"  export: none}
constant: description__f_sales_revenue_refunds_summary__dry_sale_revenue {  value: "The revenue from the dry sale items on the order. This includes the redemption of credits at the price originally paid for the credit, but excludes the sale of credits. Revenue excludes sales tax."  export: none}
constant: description__f_sales_revenue_refunds_summary__dry_sale_revenue_before_discount {  value: "As DRY_SALE_REVENUE, but before any discounts or credits are applied."  export: none}
constant: description__f_sales_revenue_refunds_summary__dry_sale_revenue_before_discount_inc_tax {  value: "As DRY_SALE_REVENUE_BEFORE_DISCOUNT but inclusive of tax"  export: none}
constant: description__f_sales_revenue_refunds_summary__dry_sale_revenue_inc_tax {  value: "As DRY_SALE_REVENUE but inclusive of tax."  export: none}
constant: description__f_sales_revenue_refunds_summary__dry_sale_revenue_s4_cogs {  value: "The S4 COGS corresponding to the Revenue amount for dry sale products. S4 Metrics are not reliable at the individual order level and should only be used for decisions when aggregated. By default this includes the Shipping COGS for delivery items."  export: none}
constant: description__f_sales_revenue_refunds_summary__dry_sale_revenue_s4_margin {  value: "The revenue margin for dry sale items, based on the S4 COGS. Note that by default, this includes S4 Shipping Margin (since revenue, by default, includes shipping revenue). S4 Metrics are not reliable at the individual order level and should only be used for decisions when aggregated."  export: none}
constant: description__f_sales_revenue_refunds_summary__dry_sale_revenue_s4_shipping_cogs {  value: "The S4 Shipping COGS associated with the dry sale products sold, aggregated to the relevant delivery line item, based on the provisional production location and the delivery country. Note that this metric scales with the quantity ordered (this is how S4 Shipping COGS unit cost values are defined). S4 Metrics are not reliable at the individual order level and should only be used for decisions when aggregated."  export: none}
constant: description__f_sales_revenue_refunds_summary__dry_sale_revenue_s4_shipping_margin {  value: "The margin on shipping, based on the S4 Shipping COGS. S4 Metrics are not reliable at the individual order level and should only be used for decisions when aggregated."  export: none}
constant: description__f_sales_revenue_refunds_summary__earliest_estimated_despatch_datetime_utc {  value: "The earliest estimated despatch date for items on the order"  export: none}
constant: description__f_sales_revenue_refunds_summary__event_type {  value: "The most recent event type that updated this record"  export: none}
constant: description__f_sales_revenue_refunds_summary__event_version {  value: "The most recent event version that updated this record"  export: none}
constant: description__f_sales_revenue_refunds_summary__latest_estimated_despatch_datetime_utc {  value: "The latest estimated despatch date for items on the order"  export: none}
constant: description__f_sales_revenue_refunds_summary__measures {  value: "Measures"  export: none}
constant: description__f_sales_revenue_refunds_summary__order_paid_datetime_utc {  value: "The date on which payment was made. This is subtly different to the SALES_DATE as it does not account for the processing time on the transaction. It is included here only to prevent users joining the order header dimension to the date dimension"  export: none}
constant: description__f_sales_revenue_refunds_summary__product_credits_customer_spend {  value: "The Customer Spend amount of the sales of product credits on the Order. Note that this excludes sales by credit. Customer Spend includes sales tax by default"  export: none}
constant: description__f_sales_revenue_refunds_summary__product_credits_customer_spend_before_discount {  value: "The Customer Spend amount of the sales of product credit on the Order, before offer code discounts are applied. Note that this excludes sales by credit. Customer Spend includes sales tax by default"  export: none}
constant: description__f_sales_revenue_refunds_summary__product_credits_customer_spend_before_discount_exc_tax {  value: "The Customer Spend amount of the sales of product credit on the Order, before offer code discounts are applied. Note that this excludes sales by credit. Customer Spend includes sales tax by default"  export: none}
constant: description__f_sales_revenue_refunds_summary__product_credits_customer_spend_exc_tax {  value: "The Customer Spend amount of the sales of product credits on the Order. Note that this excludes sales by credit. Customer Spend includes sales tax by default"  export: none}
constant: description__f_sales_revenue_refunds_summary__product_credits_quantity {  value: "The quantity of product credits purchased on the order"  export: none}
constant: description__f_sales_revenue_refunds_summary__refund_customer_spend {  value: "The customer spend amount of the refund - note that by default, this is inclusive of tax."  export: none}
constant: description__f_sales_revenue_refunds_summary__refund_customer_spend_exc_tax {  value: "As REFUND_CUSTOMER_SPEND, but exclusive of sales tax. The tax component is calculated by the source system (Babel or Wellnitz)."  export: none}
constant: description__f_sales_revenue_refunds_summary__refund_order_value {  value: "The order value of the refund - by default, this is exclusive of tax. The tax component is calculated by the source system (Babel or Wellnitz)."  export: none}
constant: description__f_sales_revenue_refunds_summary__refund_order_value_inc_tax {  value: "As REFUND_ORDER_VALUE, but inclusive of sales tax."  export: none}
constant: description__f_sales_revenue_refunds_summary__refund_quantity {  value: "The number of refunds issued"  export: none}
constant: description__f_sales_revenue_refunds_summary__refund_revenue {  value: "The order value of the refund - note that by default, this is exclusive of tax. The tax component is calculated by the source system (Babel or Wellnitz)."  export: none}
constant: description__f_sales_revenue_refunds_summary__refund_revenue_inc_tax {  value: "As REFUND_REVENUE, but including sales tax."  export: none}
constant: description__f_sales_revenue_refunds_summary__revenue_datetime_utc {  value: "The date on which the order was dispatched"  export: none}
constant: description__f_sales_revenue_refunds_summary__sales_datetime_utc {  value: "The date on which the payment was processed"  export: none}
constant: description__f_sales_revenue_refunds_summary__sales_revenue_and_refunds_pk {  value: "The primary key for this table. Note that this is the same as the Order Header SK. Both are provided for consistency."  export: none}
