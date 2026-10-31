using asset from '../db/schema';
service RequestService {
   entity Requests as projection on asset.Requests;
   entity RequestItems as projection on asset.RequestItems;
   @readonly
   entity Assets as projection on asset.Assets{
    ID, name, category, description, price, currency
   };
   @readonly entity Statuses as projection on asset.Statuses;
   @readonly entity Priorities as projection on asset.Priorities;

}