using asset from '../db/schema';

service RequestService {
    entity Assets as projection on asset.Assets;
}