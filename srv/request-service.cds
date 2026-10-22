using asset from '../db/schema';
service RequestService {
    entity Assets as projection on asset.Assets;
    entity Statuses as projection on asset.Statuses;
    entity Requests as projection on asset.Requests;
    entity RequestItems as projection on asset.RequestItems;
}