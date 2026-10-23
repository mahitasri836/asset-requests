namespace asset;
using {cuid, managed, Currency, sap.common.CodeList } from '@sap/cds/common';
entity Assets : cuid, managed {
    name : String(100) @mandatory;
    category : String(40);
    description: String(500);
    price : Decimal(10,2);
    currency : Currency;
    stock: Integer default 0;


}
entity Statuses :  CodeList{
    key code : String(1);
}

entity Requests : cuid, managed {
    title : String(100) @mandatory;
    justification : String(1000);
    status : Association to Statuses;
    priority : Association to Priorities;
    items : Composition of many RequestItems on items.parent = $self;
    
    

}

entity RequestItems : cuid {
    asset : Association to Assets;
    parent : Association to Requests;
    quantity : Integer default 1;
    expDelDate : Date;

}

entity Priorities : CodeList {
    key code : String(1) default 'M';
}