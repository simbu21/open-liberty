CREATE TABLE ${schemaname}.AnnRootEmBT (id INTEGER NOT NULL, enumeratedOrdinalValueFA SMALLINT, enumeratedStringValueFA VARCHAR(20), enumeratedOrdinalValuePA SMALLINT, enumeratedStringValuePA VARCHAR(20), integerValueAttributeOverride INTEGER, integerValue INTEGER, integerValueFAColumn INTEGER, integerValuePAColumn INTEGER, clobValueFA CLOB(1M), clobValuePA CLOB(1M), temporalValueFA DATE, temporalValuePA DATE, PRIMARY KEY (id));
CREATE TABLE ${schemaname}.ColDate (parent_id INTEGER, value TIMESTAMP, valueOrderColumn INTEGER);
CREATE TABLE ${schemaname}.ColEnum (parent_id INTEGER, value VARCHAR(254), valueOrderColumn INTEGER);
CREATE TABLE ${schemaname}.ColInt (parent_id INTEGER, value INTEGER, valueOrderColumn INTEGER);
CREATE TABLE ${schemaname}.ColLob (parent_id INTEGER, value VARCHAR(254), valueOrderColumn INTEGER);
CREATE TABLE ${schemaname}.EntColLobPAE (parent_id INTEGER, clobValuePA CLOB(1M), valueOrderColumn INTEGER);
CREATE TABLE ${schemaname}.EntListEnumPAEOrderBy (parent_id INTEGER, enumeratedOrdinalValuePA SMALLINT, enumeratedStringValuePA VARCHAR(20));
CREATE TABLE ${schemaname}.EntListEnumPAEOrderColumn (parent_id INTEGER, enumeratedOrdinalValuePA SMALLINT, enumeratedStringValuePA VARCHAR(20), valueOrderColumn INTEGER);
CREATE TABLE ${schemaname}.EntListIntegerAOE (parent_id INTEGER, integerValueAttributeOverride INTEGER, valueOrderColumn INTEGER);
CREATE TABLE ${schemaname}.EntListIntegerE (parent_id INTEGER, integerValue INTEGER, valueOrderColumn INTEGER);
CREATE TABLE ${schemaname}.EntListIntegerPAE (parent_id INTEGER, integerValuePAColumn INTEGER, valueOrderColumn INTEGER);
CREATE TABLE ${schemaname}.EntListTemporalPAE (parent_id INTEGER, temporalValuePA DATE, valueOrderColumn INTEGER);
CREATE TABLE ${schemaname}.EntMapDateTemporalPAE (parent_id INTEGER, mykey DATE NOT NULL, temporalValuePA DATE);
CREATE TABLE ${schemaname}.EntMapEnumPAEEnumPAE (parent_id INTEGER, mykey VARCHAR(254) NOT NULL, valueOrdinal SMALLINT, valueString VARCHAR(254));
CREATE TABLE ${schemaname}.EntMapIntegerEIntegerE (parent_id INTEGER, mykey INTEGER, value INTEGER);
CREATE TABLE ${schemaname}.EntMapIntegerIntegerPAE (parent_id INTEGER, mykey INTEGER NOT NULL, value INTEGER);
CREATE TABLE ${schemaname}.EntMapIntegerTemporalPAE (parent_id INTEGER, mykey INTEGER NOT NULL, temporalValuePA DATE);
CREATE TABLE ${schemaname}.EntMapLobPAELobPAE (parent_id INTEGER, mykey CLOB(1M), value CLOB(1M));
CREATE TABLE ${schemaname}.EntSetIntegerPAE (parent_id INTEGER, integerValuePAColumn INTEGER);
CREATE TABLE ${schemaname}.ListDate (parent_id INTEGER, value TIMESTAMP, valueOrderColumn INTEGER);
CREATE TABLE ${schemaname}.ListEnum (parent_id INTEGER, value VARCHAR(254), valueOrderColumn INTEGER);
CREATE TABLE ${schemaname}.ListIntOrderBy (parent_id INTEGER, value INTEGER);
CREATE TABLE ${schemaname}.ListIntOrderColumn (parent_id INTEGER, value INTEGER, valueOrderColumn INTEGER);
CREATE TABLE ${schemaname}.ListLob (parent_id INTEGER, value VARCHAR(254), valueOrderColumn INTEGER);
CREATE TABLE ${schemaname}.MapDateDate (parent_id INTEGER, mykey DATE NOT NULL, value TIMESTAMP);
CREATE TABLE ${schemaname}.MapEnumEnum (parent_id INTEGER, mykey VARCHAR(254) NOT NULL, value VARCHAR(254));
CREATE TABLE ${schemaname}.MapEnumLob (parent_id INTEGER, mykey VARCHAR(254) NOT NULL, value VARCHAR(254));
CREATE TABLE ${schemaname}.MapIntDate (parent_id INTEGER, mykey INTEGER NOT NULL, value TIMESTAMP);
CREATE TABLE ${schemaname}.MapIntInt (parent_id INTEGER, mykey INTEGER NOT NULL, value INTEGER);
CREATE TABLE ${schemaname}.SetDate (parent_id INTEGER, value TIMESTAMP);
CREATE TABLE ${schemaname}.SetEnum (parent_id INTEGER, value VARCHAR(254));
CREATE TABLE ${schemaname}.SetInt (parent_id INTEGER, value INTEGER);
CREATE TABLE ${schemaname}.SetLob (parent_id INTEGER, value VARCHAR(254));
CREATE TABLE ${schemaname}.XMLRootEmBT (id INTEGER NOT NULL, enumeratedOrdinalValueFA SMALLINT, enumeratedStringValueFA VARCHAR(20), enumeratedOrdinalValuePA SMALLINT, enumeratedStringValuePA VARCHAR(20), integerValueAttributeOverride INTEGER, integerValue INTEGER, integerValueFAColumn INTEGER, integerValuePAColumn INTEGER, transientValue INTEGER, clobValueFA CLOB(1M), clobValuePA CLOB(1M), temporalValueFA DATE, temporalValuePA DATE, PRIMARY KEY (id));
CREATE TABLE ${schemaname}.XMLColDate (parent_id INTEGER, value DATE, valueOrderColumn INTEGER);
CREATE TABLE ${schemaname}.XMLColEnum (parent_id INTEGER, value VARCHAR(254), valueOrderColumn INTEGER);
CREATE TABLE ${schemaname}.XMLColInt (parent_id INTEGER, value INTEGER, valueOrderColumn INTEGER);
CREATE TABLE ${schemaname}.XMLColLob (parent_id INTEGER, value CLOB(1M), valueOrderColumn INTEGER);
CREATE TABLE ${schemaname}.XMLEntColLobPAE (parent_id INTEGER, clobValuePA CLOB(1M), valueOrderColumn INTEGER);
CREATE TABLE ${schemaname}.XMLEntListEnumPAEOrderBy (parent_id INTEGER, enumeratedOrdinalValuePA SMALLINT, enumeratedStringValuePA VARCHAR(20));
CREATE TABLE ${schemaname}.XMLEntListEnumPAEOrderColumn (parent_id INTEGER, enumeratedOrdinalValuePA SMALLINT, enumeratedStringValuePA VARCHAR(20), valueOrderColumn INTEGER);
CREATE TABLE ${schemaname}.XMLEntListIntegerAOE (parent_id INTEGER, integerValueAttributeOverride INTEGER, valueOrderColumn INTEGER);
CREATE TABLE ${schemaname}.XMLEntListIntegerE (parent_id INTEGER, integerValue INTEGER, valueOrderColumn INTEGER);
CREATE TABLE ${schemaname}.XMLEntListIntegerPAE (parent_id INTEGER, integerValuePAColumn INTEGER, valueOrderColumn INTEGER);
CREATE TABLE ${schemaname}.XMLListDate (parent_id INTEGER, value DATE, valueOrderColumn INTEGER);
CREATE TABLE ${schemaname}.XMLListEnum (parent_id INTEGER, value VARCHAR(254), valueOrderColumn INTEGER);
CREATE TABLE ${schemaname}.XMLListIntOrderBy (parent_id INTEGER, value INTEGER);
CREATE TABLE ${schemaname}.XMLListIntOrderColumn (parent_id INTEGER, value INTEGER, valueOrderColumn INTEGER);
CREATE TABLE ${schemaname}.XMLListLob (parent_id INTEGER, value CLOB(1M), valueOrderColumn INTEGER);
CREATE TABLE ${schemaname}.XMLListTemporalPAE (parent_id INTEGER, temporalValuePA DATE, valueOrderColumn INTEGER);
CREATE TABLE ${schemaname}.XMLMapDateDate (parent_id INTEGER, mykey TIMESTAMP, value DATE);
CREATE TABLE ${schemaname}.XMLMapDateTemporalPAE (parent_id INTEGER, mykey TIMESTAMP, temporalValuePA DATE);
CREATE TABLE ${schemaname}.XMLMapEnumEnum (parent_id INTEGER, mykey VARCHAR(254), value VARCHAR(254));
CREATE TABLE ${schemaname}.XMLMapEnumLob (parent_id INTEGER, mykey VARCHAR(254), value CLOB(1M));
CREATE TABLE ${schemaname}.XMLMapIntDate (parent_id INTEGER, mykey INTEGER, value DATE);
CREATE TABLE ${schemaname}.XMLMapIntegerTemporalPAE (parent_id INTEGER, mykey INTEGER, temporalValuePA DATE);
CREATE TABLE ${schemaname}.XMLMapIntInt (parent_id INTEGER, mykey INTEGER, value INTEGER);
CREATE TABLE ${schemaname}.XMLSetDate (parent_id INTEGER, value DATE);
CREATE TABLE ${schemaname}.XMLSetEnum (parent_id INTEGER, value VARCHAR(254));
CREATE TABLE ${schemaname}.XMLSetInt (parent_id INTEGER, value INTEGER);
CREATE TABLE ${schemaname}.XMLSetIntegerPAE (parent_id INTEGER, integerValuePAColumn INTEGER);
CREATE TABLE ${schemaname}.XMLSetLob (parent_id INTEGER, value CLOB(1M));
CREATE INDEX ${schemaname}.I_COLDATE_PARENT_ID ON ${schemaname}.ColDate (parent_id);
CREATE INDEX ${schemaname}.I_COLENUM_PARENT_ID ON ${schemaname}.ColEnum (parent_id);
CREATE INDEX ${schemaname}.I_COLINT_PARENT_ID ON ${schemaname}.ColInt (parent_id);
CREATE INDEX ${schemaname}.I_COLLOB_PARENT_ID ON ${schemaname}.ColLob (parent_id);
CREATE INDEX ${schemaname}.I_NTCLLBP_PARENT_ID ON ${schemaname}.EntColLobPAE (parent_id);
CREATE INDEX ${schemaname}.I_NTLSRBY_PARENT_ID ON ${schemaname}.EntListEnumPAEOrderBy (parent_id);
CREATE INDEX ${schemaname}.I_NTLSLMN_PARENT_ID ON ${schemaname}.EntListEnumPAEOrderColumn (parent_id);
CREATE INDEX ${schemaname}.I_NTLSTGR_PARENT_ID ON ${schemaname}.EntListIntegerAOE (parent_id);
CREATE INDEX ${schemaname}.I_NTLSTGR_PARENT_ID1 ON ${schemaname}.EntListIntegerE (parent_id);
CREATE INDEX ${schemaname}.I_NTLSGRP_PARENT_ID ON ${schemaname}.EntListIntegerPAE (parent_id);
CREATE INDEX ${schemaname}.I_NTLSRLP_PARENT_ID ON ${schemaname}.EntListTemporalPAE (parent_id);
CREATE INDEX ${schemaname}.I_NTMPRLP_PARENT_ID1 ON ${schemaname}.EntMapDateTemporalPAE (parent_id);
CREATE INDEX ${schemaname}.I_NTMPNMP_PARENT_ID ON ${schemaname}.EntMapEnumPAEEnumPAE (parent_id);
CREATE INDEX ${schemaname}.I_NTMPTGR_PARENT_ID ON ${schemaname}.EntMapIntegerEIntegerE (parent_id);
CREATE INDEX ${schemaname}.I_NTMPGRP_PARENT_ID ON ${schemaname}.EntMapIntegerIntegerPAE (parent_id);
CREATE INDEX ${schemaname}.I_NTMPRLP_PARENT_ID ON ${schemaname}.EntMapIntegerTemporalPAE (parent_id);
CREATE INDEX ${schemaname}.I_NTMPLBP_PARENT_ID ON ${schemaname}.EntMapLobPAELobPAE (parent_id);
CREATE INDEX ${schemaname}.I_NTSTGRP_PARENT_ID ON ${schemaname}.EntSetIntegerPAE (parent_id);
CREATE INDEX ${schemaname}.I_LISTDTE_PARENT_ID ON ${schemaname}.ListDate (parent_id);
CREATE INDEX ${schemaname}.I_LISTNUM_PARENT_ID ON ${schemaname}.ListEnum (parent_id);
CREATE INDEX ${schemaname}.I_LSTNRBY_PARENT_ID ON ${schemaname}.ListIntOrderBy (parent_id);
CREATE INDEX ${schemaname}.I_LSTNLMN_PARENT_ID ON ${schemaname}.ListIntOrderColumn (parent_id);
CREATE INDEX ${schemaname}.I_LISTLOB_PARENT_ID ON ${schemaname}.ListLob (parent_id);
CREATE INDEX ${schemaname}.I_MPDTDTE_PARENT_ID ON ${schemaname}.MapDateDate (parent_id);
CREATE INDEX ${schemaname}.I_MPNMNUM_PARENT_ID ON ${schemaname}.MapEnumEnum (parent_id);
CREATE INDEX ${schemaname}.I_MPNUMLB_PARENT_ID ON ${schemaname}.MapEnumLob (parent_id);
CREATE INDEX ${schemaname}.I_MPINTDT_PARENT_ID ON ${schemaname}.MapIntDate (parent_id);
CREATE INDEX ${schemaname}.I_MPNTINT_PARENT_ID ON ${schemaname}.MapIntInt (parent_id);
CREATE INDEX ${schemaname}.I_SETDATE_PARENT_ID ON ${schemaname}.SetDate (parent_id);
CREATE INDEX ${schemaname}.I_SETENUM_PARENT_ID ON ${schemaname}.SetEnum (parent_id);
CREATE INDEX ${schemaname}.I_SETINT_PARENT_ID ON ${schemaname}.SetInt (parent_id);
CREATE INDEX ${schemaname}.I_SETLOB_PARENT_ID ON ${schemaname}.SetLob (parent_id);
CREATE INDEX ${schemaname}.I_XMLCLDT_PARENT_ID ON ${schemaname}.XMLColDate (parent_id);
CREATE INDEX ${schemaname}.I_XMLCLNM_PARENT_ID ON ${schemaname}.XMLColEnum (parent_id);
CREATE INDEX ${schemaname}.I_XMLCLNT_PARENT_ID ON ${schemaname}.XMLColInt (parent_id);
CREATE INDEX ${schemaname}.I_XMLCLLB_PARENT_ID ON ${schemaname}.XMLColLob (parent_id);
CREATE INDEX ${schemaname}.I_XMLNLBP_PARENT_ID ON ${schemaname}.XMLEntColLobPAE (parent_id);
CREATE INDEX ${schemaname}.I_XMLNRBY_PARENT_ID ON ${schemaname}.XMLEntListEnumPAEOrderBy (parent_id);
CREATE INDEX ${schemaname}.I_XMLNLMN_PARENT_ID ON ${schemaname}.XMLEntListEnumPAEOrderColumn (parent_id);
CREATE INDEX ${schemaname}.I_XMLNTGR_PARENT_ID ON ${schemaname}.XMLEntListIntegerAOE (parent_id);
CREATE INDEX ${schemaname}.I_XMLNTGR_PARENT_ID1 ON ${schemaname}.XMLEntListIntegerE (parent_id);
CREATE INDEX ${schemaname}.I_XMLNGRP_PARENT_ID ON ${schemaname}.XMLEntListIntegerPAE (parent_id);
CREATE INDEX ${schemaname}.I_XMLLTDT_PARENT_ID ON ${schemaname}.XMLListDate (parent_id);
CREATE INDEX ${schemaname}.I_XMLLTNM_PARENT_ID ON ${schemaname}.XMLListEnum (parent_id);
CREATE INDEX ${schemaname}.I_XMLLRBY_PARENT_ID ON ${schemaname}.XMLListIntOrderBy (parent_id);
CREATE INDEX ${schemaname}.I_XMLLLMN_PARENT_ID ON ${schemaname}.XMLListIntOrderColumn (parent_id);
CREATE INDEX ${schemaname}.I_XMLLTLB_PARENT_ID ON ${schemaname}.XMLListLob (parent_id);
CREATE INDEX ${schemaname}.I_XMLLRLP_PARENT_ID ON ${schemaname}.XMLListTemporalPAE (parent_id);
CREATE INDEX ${schemaname}.I_XMLMTDT_PARENT_ID1 ON ${schemaname}.XMLMapDateDate (parent_id);
CREATE INDEX ${schemaname}.I_XMLMRLP_PARENT_ID1 ON ${schemaname}.XMLMapDateTemporalPAE (parent_id);
CREATE INDEX ${schemaname}.I_XMLMMNM_PARENT_ID ON ${schemaname}.XMLMapEnumEnum (parent_id);
CREATE INDEX ${schemaname}.I_XMLMMLB_PARENT_ID ON ${schemaname}.XMLMapEnumLob (parent_id);
CREATE INDEX ${schemaname}.I_XMLMTDT_PARENT_ID ON ${schemaname}.XMLMapIntDate (parent_id);
CREATE INDEX ${schemaname}.I_XMLMRLP_PARENT_ID ON ${schemaname}.XMLMapIntegerTemporalPAE (parent_id);
CREATE INDEX ${schemaname}.I_XMLMTNT_PARENT_ID ON ${schemaname}.XMLMapIntInt (parent_id);
CREATE INDEX ${schemaname}.I_XMLSTDT_PARENT_ID ON ${schemaname}.XMLSetDate (parent_id);
CREATE INDEX ${schemaname}.I_XMLSTNM_PARENT_ID ON ${schemaname}.XMLSetEnum (parent_id);
CREATE INDEX ${schemaname}.I_XMLSTNT_PARENT_ID ON ${schemaname}.XMLSetInt (parent_id);
CREATE INDEX ${schemaname}.I_XMLSGRP_PARENT_ID ON ${schemaname}.XMLSetIntegerPAE (parent_id);
CREATE INDEX ${schemaname}.I_XMLSTLB_PARENT_ID ON ${schemaname}.XMLSetLob (parent_id);