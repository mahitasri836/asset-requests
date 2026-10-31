using asset from '../db/schema';

service ApprovalService @(path : 'manager'){
@readonly entity Requests as projection on asset.Requests{
    *,
    createdBy as requestor,
    status.name as statusName,
    priority.name as priorityName
}excluding {modifiedBy};

@readonly entity RequestItems as projection on asset.RequestItems;

entity Assets as projection on asset.Assets;
}


