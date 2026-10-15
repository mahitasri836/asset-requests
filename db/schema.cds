namespace asset;
using {cuid,managed} from '@sap/cds/common';
entity Assets : cuid,managed{
    name :String(100);
    category : String(40);
    price : Decimal(10,2);
}